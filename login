document.addEventListener("DOMContentLoaded", function () {
    const cadastroForm = document.getElementById("cadastro-form");
    const errorMessage = document.getElementById("error-message-cadastro");

    cadastroForm.addEventListener("submit", function (e) {
        e.preventDefault();
        const password = cadastroForm.password.value;
        const confirmpassword = cadastroForm.confirmarPassword.value;

        if (password === confirmpassword) {
            errorMessage.textContent = "Cadastro realizado com sucesso!";
            errorMessage.style.color = "green";
        } else {
            errorMessage.textContent = "Senhas estão incorretas";
            errorMessage.style.color = "red";
        }
    });
});