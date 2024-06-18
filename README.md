# Automação API - VR

Este projeto contém os testes de API para a empresa VR, utilizando Ruby e Cucumber. Siga as instruções abaixo para configurar e executar os testes em seu ambiente local.

### 📋 Pré-requisitos

Antes de começar, você precisará instalar o Ruby na versão seguinte versão:

- Ruby 3.1.6p260: [Baixe aqui](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.6-1/rubyinstaller-devkit-3.1.6-1-x64.exe) e siga as instruções de instalação.

### 🔧 Instalação

Etapas para instalar o projeto:

1. Clone o projeto do repositório Git para o disco local C:

```
git clone <url-do-repositório>
```

2. Abra o terminal na pasta raiz do projeto e instale o Bundler:
```
gem install bundler
```

3. Instale as dependências do projeto:

```
bundle install
```

## ⚙️ Executando os testes

Configurei um parâmetro chamado api no arquivo cucumber.yml. Esse parâmetro prepara o ambiente para registrar as evidências da execução. Você pode executar cenários específicos utilizando tags ou rodar todos os cenários de uma vez. Siga os comandos abaixo:

- Para rodar um cenário específico:

```
cucumber -t @NomeTagDesejada -p api
```
Substitua @NomeTagDesejada pela tag correspondente encontrada em features/specs/arquivo.feature.

- Para executar todos os cenários:
```
cucumber -p api
```


## 🛠️ Construído com

Ferramentas e frameworks utilizadas para realizar a construção dos testes

- Ruby: Linguagem de programação usada para escrever os testes.
- Cucumber: Framework para execução de testes descritos em linguagem natural.
- HTTParty: Biblioteca usada para fazer chamadas HTTP.
- Report Builder: Ferramenta para criar relatórios visuais dos testes.
- RSpec: Framework para testes de assertividade.

## ✒️ Autor

Lucas Borgato