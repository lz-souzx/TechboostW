function validar(){
    const nome = document.getElementById("nome").value.trim();
    const email = document.getElementById("email").value.trim();
    const telefone = document.getElementById("telefone").value.trim();
    const cpf = document.getElementById("cpf").value.trim();
    const endereco = document.getElementById("endereco").value.trim();

    if (nome === "") {
        alert("Por favor, preencha o nome.");
        return;
    }

    if (!validarEmail(email)) {
        alert("Por favor, insira um e-mail válido.");
        return;
    }

    if (!validarTelefone(telefone)) {
        alert("Por favor, insira um telefone válido no formato (XX) XXXXX-XXXX.");
        return;
    }

    if (!validarCPF(cpf)) {
        alert("Por favor, insira um CPF válido.");
        return;
    }

    if (endereco === "") {
        alert("Por favor, preencha o endereço.");
        return;
    }

    // Se todas as validações passarem, o formulário é enviado
    alert("Cadastro realizado com sucesso!");
    form.submit();
}

function validarEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
}

// Função para validar telefone (formato: (XX) XXXXX-XXXX)
function validarTelefone(telefone) {
    const regex = /^\(\d{2}\) \d{5}-\d{4}$/;
    return regex.test(telefone);
}

// Função para validar CPF (apenas números e 11 dígitos)
function validarCPF(cpf) {
    const regex = /^\d{11}$/;
    return regex.test(cpf);
}



