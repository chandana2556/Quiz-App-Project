function login(){

    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    if(username==="" || password===""){
        alert("Please enter Username and Password");
        return;
    }

    // Temporary login
    window.location.href="category.html";

}
function togglePassword(){

    const password = document.getElementById("password");
    const eye = document.getElementById("eyeIcon");

    if(password.type === "password"){

        password.type = "text";

        eye.className = "fa-solid fa-eye eye-icon";

    }
    else{

        password.type = "password";

        eye.className = "fa-solid fa-eye-slash eye-icon";

    }

}