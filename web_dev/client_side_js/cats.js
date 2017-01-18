console.log("This site is about cats!")

var catPic = document.getElementById("pic");
catPic.style.border = "thin solid orange";

var newText = document.createElement('p');
// var catText = "This is just about cats. Cats, cats, cats.";
newText.appendChild(document.createTextNode("This is just about cats. Cats, cats, cats."));
document.body.appendChild(newText);

// document.getElementById("cat-info").addEventListener("click", function(){
//     this.style.backgroundColor = "green";
// });

var catTable = document.getElementById("cat-info");
catTable.addEventListener("mouseover", function(){
    catTable.style.backgroundColor = "green";
});