const textarea = () => {
  const target = document.querySelector(".textarea");
  let lineHeight = Number(target.getAttribute("rows"));
  while (target.scrollHeight > target.offsetHeight){
    lineHeight++;
    target.setAttribute("rows", lineHeight);
  }
}

setInterval(textarea, 1000);