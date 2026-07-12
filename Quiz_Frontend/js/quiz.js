let category = localStorage.getItem("category");
let questions = [];
let currentQuestion = 0;
let responses = [];
let selectedAnswer = "";

let quizId;

async function createQuiz() {

    let response = await fetch(
        `http://localhost:8080/quiz/create?category=${category}&numQ=5&title=${category} Quiz`,
        {
            method: "POST"
        }
    );

    quizId = await response.text();

    console.log("Quiz ID:", quizId);

    getQuestions();
}

async function getQuestions(){

    let response = await fetch(`http://localhost:8080/quiz/get/${quizId}`);

    questions = await response.json();

    console.log(questions);

    displayQuestion();
}

function displayQuestion(){

    document.getElementById("questionNo").innerText =
        `Question ${currentQuestion + 1} of ${questions.length}`;

    document.getElementById("question").innerText =
        questions[currentQuestion].questionTitle;

    document.getElementById("option1").innerText =
        questions[currentQuestion].option1;

    document.getElementById("option2").innerText =
        questions[currentQuestion].option2;

    document.getElementById("option3").innerText =
        questions[currentQuestion].option3;

    document.getElementById("option4").innerText =
        questions[currentQuestion].option4;

    let options = document.querySelectorAll(".option");

    options.forEach(option => {
        option.classList.remove("selected");
    });

    selectedAnswer = "";

    // Restore previously selected answer
    if(responses[currentQuestion]){

        selectedAnswer = responses[currentQuestion].response;

        options.forEach(option => {

            if(option.innerText === selectedAnswer){

                option.classList.add("selected");

            }

        });

    }
}

async function submitQuiz(){

    let response = await fetch(`http://localhost:8080/quiz/submit/${quizId}`,{

        method:"POST",

        headers:{
            "Content-Type":"application/json"
        },

        body: JSON.stringify(responses)

    });

    let score = await response.text();

    localStorage.setItem("score", score);

    localStorage.setItem("totalQuestions", questions.length);

    window.location.href = "result.html";
}

function selectAnswer(button){

    let options = document.querySelectorAll(".option");

    options.forEach(option => {
        option.classList.remove("selected");
    });

    button.classList.add("selected");

    selectedAnswer = button.innerText;
}

// NEXT BUTTON
document.getElementById("nextBtn").addEventListener("click", function(){

    responses[currentQuestion] = {
        id: questions[currentQuestion].id,
        response: selectedAnswer
    };

    if(currentQuestion < questions.length - 1){

        currentQuestion++;

        displayQuestion();

        if(currentQuestion == questions.length - 1){
            document.getElementById("nextBtn").innerText = "Submit";
        }

    }else{

        submitQuiz();

    }

});

// PREVIOUS BUTTON
document.getElementById("prevBtn").addEventListener("click", function(){

    if(currentQuestion > 0){

        currentQuestion--;

        displayQuestion();

        document.getElementById("nextBtn").innerText = "Next";
    }

});

createQuiz();