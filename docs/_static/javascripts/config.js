document$.subscribe(() => {
  hljs.highlightAll();
});


function onClick(btn) {
  console.log(btn);
  
  let expandContainer = btn.parentElement.querySelector(".proto-field-sub-child");
  if(!expandContainer) {
    console.log("Btn has nothing to expand into!");
    return;
  }

  if(expandContainer.classList.contains("hidden")) {
    expandContainer.classList.remove("hidden");
    btn.innerText = "Hide child attributes";
  } else {
    expandContainer.classList.add("hidden");
    btn.innerText = "Show child attributes";
  }
}
