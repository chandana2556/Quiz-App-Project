let score = localStorage.getItem("score");
let total = localStorage.getItem("totalQuestions");

document.getElementById("score").innerText =
    `Your Score : ${score} / ${total}`;

document.getElementById("tryAgain").addEventListener("click", function(){

    window.location.href = "category.html";

});