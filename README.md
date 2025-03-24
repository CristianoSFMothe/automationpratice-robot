# 🛒 Automation Practice - Robot Framework

<div align="center">
<img src="https://img.shields.io/github/repo-size/CristianoSFMothe/automationpratice-robot?style=for-the-badge" /> 
<img src="https://img.shields.io/github/last-commit/CristianoSFMothe/automationpratice-robot?style=for-the-badge" />
<img src="https://img.shields.io/github/issues/CristianoSFMothe/automationpratice-robot?style=for-the-badge" />
<img src="https://img.shields.io/github/stars/CristianoSFMothe/automationpratice-robot?style=for-the-badge" />
</div>



Este repositório contém testes automatizados para o site [Automation Practice](https://automationpratice.com.br/) utilizando **Robot Framework** com a **Library Browser**.



## 📂 Estrutura do Projeto

```
📦 automationpratice-robot
├── 📂 .github
│ ├── 📂 workflows
│ │ ├── ci.yml # Pipeline de integração contínua
├── 📂 resources
│ ├── 📂 config
│ │ ├── Libs.resource # Configuração de bibliotecas
│ ├── 📂 fixtures
│ │ ├── login.json # Massa de dados para login
│ │ ├── register.json # Massa de dados para registro
│ ├── 📂 locators
│ │ ├── homeLocators.yml # Localizadores da Home
│ │ ├── loginLocators.yml # Localizadores de Login
│ │ ├── myAccountLocators.yml # Localizadores da Minha Conta
│ │ ├── registerLocators.yml # Localizadores de Cadastro
│ ├── 📂 pages
│ │ ├── homePage.resource # Keywords da Home
│ │ ├── loginPage.resource # Keywords de Login
│ │ ├── logoutPage.resource # Keywords de Logout
│ │ ├── myAccountPage.resource # Keywords de Minha Conta
│ │ ├── registerPage.resource # Keywords de Cadastro
│ ├── 📂 utils
│ │ ├── commonKeywords.resource # Keywords reutilizáveis
│ │ ├── OpenPage.resource # Keyword para abrir páginas
├── 📂 tests
│ ├── login.robot # Testes de Login
│ ├── logout.robot # Testes de Logout
│ ├── register.robot # Testes de Cadastro
└── README.md # Documentação do projeto
```

---

## 🛠 Instalação e Configuração

### 📌 **Pré-requisitos**

- Ter o **Python** instalado
- Instalar as dependências do projeto

## 🔧 Instalação das Dependências

Antes de executar os testes, instale as dependências com:

```bash
pip install -r requirements.txt
```

### 🔹 Inicializando o Browser

Antes de rodar os testes, é necessário inicializar o browser com o seguinte comando:

```bash
rfbrowser init
```

---

## 🚀 Executando os Testes

### **📌 Login**

🔹 **Sem tag:**

```bash
robot -d ./logs tests/login.robot
```

🔹 **Com tag:**

```bash
robot -d ./logs -i login tests/login.robot
```

### **📌 Logout**

🔹 **Sem tag:**

```bash
robot -d ./logs tests/logout.robot
```

🔹 **Com tag:**

```bash
robot -d ./logs -i logout tests/logout.robot
```

### **📌 Cadastro**

🔹 **Sem tag:**

```bash
robot -d ./logs tests/register.robot
```

🔹 **Com tag:**

```bash
robot -d ./logs -i create tests/register.robot
```

📌 **Tags de testes de cadastro:**

- `emptyName`
- `emptyEmail`
- `emptyPassword`
- `weakPassword`

### **📊 Executando todos os testes com relatório Allure**

```bash
robot -d ./logs --listener allure_robotframework tests
```

---

## ✅ Cobertura de Testes

- [x] **Login**
- [x] **Cadastro**
- [x] **Logout**
- [ ] **Novas funcionalidades (em desenvolvimento)**

---

## 🤝 Contribuição

Contribuições são bem-vindas!  
Caso queira sugerir melhorias, abra uma **issue** ou envie um **pull request**.

---

## ✨ Autor

Criado por **Cristiano Ferreira Mothe** 🚀

🔗 [Portfólio](https://portfolio-qa-cristiano.vercel.app/)
