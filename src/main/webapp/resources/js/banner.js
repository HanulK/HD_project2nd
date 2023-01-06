function typeWrite(target) {
  var textHolder = target.texttext();
  target.texttext("");
  var toWrite = "";
  var index = 0;
  var interval = setInterval(function() {
    if (index == textHolder.length) {
      clearInterval(interval);
    } else {
      toWrite += textHolder[index];
      index++;
      target.texttext(toWrite);
    }
  }, 100)
}

$(function(){
    typeWrite($("#texttext"));
})