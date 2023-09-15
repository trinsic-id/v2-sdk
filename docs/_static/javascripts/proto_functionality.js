function expandSubField(btn) {
  const MESSAGES = {
    "message": "child attributes",
    "enum": "enum values"
  }

  const type = btn.getAttribute("data-sub-type");

  if(!type) {
    return;
  }

  const typeMessage = MESSAGES[type];
  
  let expandContainer = btn.parentElement.querySelector(".proto-field-sub-child");
  if(!expandContainer) {
    console.log("Btn has nothing to expand into!");
    return;
  }

  if(expandContainer.classList.contains("hidden")) {
    expandContainer.classList.remove("hidden");
    btn.innerText = "Hide " + typeMessage;
  } else {
    expandContainer.classList.add("hidden");
    btn.innerText = "Show " + typeMessage;
  }
}
  

function openFieldRef(thisElem, messageName, fieldPath) {
  // Find the proto message object DOM element for the top-level message
  const messageObject = document.querySelector("div[data-proto-short-name='" + messageName + "']");
  const fieldObject = messageObject.querySelector("div[data-proto-field-path='" + fieldPath + "']");

  // 1. Click the top-level Request/Response tab to show the correct one
  // Find the tabbed-block containing the message object
  const tabbedBlock = messageObject.closest(".tabbed-block");
  // Find the tabbed-content containing the tabbed-block
  const tabbedContent = tabbedBlock.closest(".tabbed-content");
  // Find the tabbed-set containing the tabbed-content -- this is the top-level tab element
  const tabbedSet = tabbedContent.closest(".tabbed-set");


  // Find the index of the tabbed content within the tabs (IE, find the index of the tab containing the proto message)
  const index = Array.prototype.indexOf.call(tabbedContent.children, tabbedBlock) + 1;

  // Figure out the global tabbed-set ID of this tabbed-set
  const tabIdentifier = tabbedSet.getAttribute("data-tabs").split(":")[0];

  // Figure out the identifier of the tab label we need to click
  const labelIdentifier = "__tabbed_" + tabIdentifier + "_" + index;

  // Click said tab label
  tabbedSet.querySelector("input#" + labelIdentifier).click();

  // 2. Recursively expand all ancestor messages/fields that ultimately contain this field so that it's showing
  var hiddenElem = fieldObject;
  while((hiddenElem = hiddenElem.closest(".proto-field-sub-child.hidden"))) {
    console.log(hiddenElem);
    hiddenElem.parentElement.querySelector(".proto-field-expand-btn").click();
  }

  // 3. If the field contains an expanded child, hide that child to make things easier to visually parse
  const expandedChildElem = fieldObject.querySelector(":scope > .proto-field-sub-child:not(.hidden)");
  if(expandedChildElem) {
    fieldObject.querySelector(":scope > .proto-field-expand-btn").click();
    fieldObject.query
  }

  // 4. Scroll to the element
  // We can't use `element.scrollIntoView()` because, when scrolling up, the nav header breaks the browser's scroll calculations,
  // and the object will always end up under the nav header.
  const navHeader = document.querySelector("header.md-header");
  const headerBottom = navHeader.getBoundingClientRect().bottom;
  const fieldBottom = fieldObject.getBoundingClientRect().bottom;
  const fieldTop = fieldObject.getBoundingClientRect().top;

  var scrollBy = 0;

  // If the field object's bottom is below the window's viewport bottom, we need to scroll down.
  const adjustedWindowBottom = window.innerHeight * 0.95; // Subtract 5% from height so we scroll a little extra
  if(fieldBottom > adjustedWindowBottom) {
    scrollBy = fieldBottom - adjustedWindowBottom;
  } 
  // If the field object's top is above the nav header's bottom, we need to scroll up.
  const adjustedHeaderBottom = headerBottom * 1.05; // Add 5% to the nav header height so we scroll a little extra
  if(fieldTop < adjustedHeaderBottom) {
    scrollBy = fieldTop - adjustedHeaderBottom;
  }

  window.scrollBy({
    left: 0,
    top: scrollBy,
    behavior: "smooth"
  });
  

  // 5. Flash the element
  if(!fieldObject.classList.contains("flash")) {
    fieldObject.classList.add("flash");
    setTimeout(() => {
      fieldObject.classList.remove("flash");
    }, 1);
  }
}