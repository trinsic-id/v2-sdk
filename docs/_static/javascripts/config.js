document$.subscribe(() => {
  hljs.highlightAll();
});


function onClick(btn, targetStr) {
  console.log(btn);
  
  let fieldNameElem = btn.parentElement.querySelector(".proto-field-name");
  if(!fieldNameElem) {
    console.log("No field name found");
    return;
  }

  let fieldName = fieldNameElem.innerText;

  let expandContainer = btn.parentElement.querySelector(".proto-field-sub-child");
  if(!expandContainer) {
    console.log("Btn has nothing to expand into!");
    return;
  }

  if(expandContainer.classList.contains("empty")) {
    fillExpandContainer(targetStr, fieldName, expandContainer);
  }

  if(expandContainer.classList.contains("hidden")) {
    expandContainer.classList.remove("hidden");
    btn.innerText = "Hide child attributes";
  } else {
    expandContainer.classList.add("hidden");
    btn.innerText = "Show child attributes";
  }
}

function fillExpandContainer(targetStr, fieldName, container) {
  var otherContainer = document.querySelectorAll(".proto-obj-container[data-proto-name='" + targetStr + "']");
  if(otherContainer.length === 0) {
    console.log("Cannot find any proto obj named ", targetStr);
    return;
  }

  otherContainer = otherContainer[0];

  let fields = otherContainer.querySelector(".proto-obj-fields");

  if(!fields) {
    console.log("Cannot find proto obj fields", otherContainer);
    return;
  }

  //Make a clone of fields
  fields = fields.cloneNode(true);

  //In the clone of fields, wipe out any nested elements
  let nestedFields = fields.querySelectorAll(".proto-field-sub-child:not(.empty)");
  for(var i = 0; i < nestedFields.length; i++) {
    nestedFields[i].classList.add("empty");
    nestedFields[i].innerHTML = "";
  }

  let fieldNameHTML = "<span class='proto-obj-subtype-context'>" + fieldName + "." + "</span>";

  let fieldNames = fields.querySelectorAll(".proto-field-name");
  for(var i = 0; i < fieldNames.length; i++) {
    fieldNames[i].innerHTML = fieldNameHTML + fieldNames[i].innerHTML;
  } 

  container.appendChild(fields);
  container.classList.remove("empty");
}