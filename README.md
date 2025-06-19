# Code Burguer - Login

Code Burguer é um aplicativo fictício desenvolvido como parte da disciplina de Programação para Dispositivos Móveis, projetado para simular o sistema de login de uma hamburgueria. Criado com Flutter e integrado ao Firebase, o sistema permite o cadastro de novos usuários, autenticação segura e acesso a uma tela inicial personalizada.

<br>

# Guia de Configuração

Este guia explica como configurar e rodar o projeto CodeBurguer.
<br>

## 🛠 Ferramentas Necessárias

- Windows PowerShell  
- Git para Windows  
- Visual Studio Code  

 ## 🚀 Clonar o repositório
git clone <https://github.com/N4yarz/code-burguer-auth.git>

## 🚀 Instalando o Flutter SDK

Baixe o SDK

- Acesse o site oficial e baixe o arquivo .zip mais recente, exemplo:  
  flutter_windows_1.17.1-stable.zip

 Extraia o ZIP

- Extraia para um local como:  
  C:\src\flutter






## ⚙ Configurando a Variável de Ambiente PATH

1. Vá em: Menu Iniciar → Pesquise por *variáveis de ambiente*  
2. Edite as variáveis do usuário → clique *Path* → em novo
3. Adicione o caminho:  
   C:\src\flutter\bin  
4. Reinicie o terminal para aplicar a mudança.




## ✅ Executar o Flutter Doctor

No PowerShell, digite:

```flutter doctor```

### 🟢 Exemplo de saída correta:

Doctor summary (to see all details, run flutter doctor -v):<br>
[✓] Flutter (Channel stable, 3.19.6, on Microsoft Windows ...)<br>
[✓] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web<br>
[✓] Android Studio (version 2023.1)<br>
[✓] VS Code (version 1.89.1)<br>
[✓] Connected device (1 available)

### 🔴 O que fazer se aparecer algo em vermelho (✗) ou com alerta (!):

| Situação                               | Solução                                                                 |
|----------------------------------------|--------------------------------------------------------------------------|
| ✗ Android toolchain                    | Instale o Android SDK pelo Android Studio                               |
| ! Android Studio (not installed)       | Baixe e instale do site oficial: [developer.android.com/studio](https://developer.android.com/studio) |
| ✗ Connected device (none available)    | Conecte um celular com USB debug ativado ou inicie um emulador Android |
| ✗ Flutter não encontrado               | Verifique se adicionou corretamente `C:\src\flutter\bin` no PATH        |


## 🤖 Configuração do Android Studio

1. Baixe e instale o Android Studio pelo site oficial:  
   [https://developer.android.com/studio](https://developer.android.com/studio)

2. Durante a instalação, siga o assistente para configurar o *Android SDK*.





### ⚙ Instalar SDK Tools

1. Abra o Android Studio  
2. Vá em *SDK Manager*  
3. Acesse a aba *SDK Tools*  
4. Marque a opção *Android SDK Tools (Obsolete)*  
5. Clique em *Apply* e aguarde a instalação


## 📱 Configurar Android com scrcpy

##### 🔽 Baixar o scrcpy

1. Acesse: [https://github.com/Genymobile/scrcpy](https://github.com/Genymobile/scrcpy)  
2. Vá até a seção *Get the app*  
3. Baixe o .zip da sua plataforma (Windows, Linux ou macOS)  
4. Extraia os arquivos em uma pasta de sua preferência

##### 🔧 Ativar modo desenvolvedor no Android

1. Vá em Configurações > Sobre o telefone > Informações do software
2. Toque 7 vezes em *Número da versão* (ou *Build number*)  
3. Volte, acesse *Opções do desenvolvedor*  
4. Ative a opção *Depuração USB*

##### ▶ Executar o scrcpy

1. Conecte o celular ao computador via cabo USB  
2. Autorize a *depuração USB* no celular, se solicitado  
3. Dê dois cliques no executável scrcpy.exe ou execute pelo terminal


## 📟 Configuração de um Emulador Android

1. No Android Studio, vá em:  
   *Ferramentas → Android → AVD Manager*
2. Clique em *Create Virtual Device*
3. Escolha um modelo de dispositivo e avance
4. Selecione uma imagem do sistema (x86 ou x86_64)
5. Finalize e clique em *Play* para iniciar o emulador



## 💻 Rodando no VS Code

1.   Instale a extensão Flutter
2.  Abra o projeto no Vs Code
3.  Instale as dependências


`flutter pub get`

## 📦 Instalar o NDK (Native Development Kit)
Para que o projeto funcione corretamente, é necessário instalar o NDK versão 27.0.12077973, compatível com o build do projeto.

#### 🔽 Como instalar o NDK
1. Abra o Android Studio
2. Vá em → Preferences (ou Configurações) → Appearance & Behavior → System Settings → Android SDK
3. Acesse a aba SDK Tools
4. Marque a opção NDK (Side by side)
5. Clique em Show Package Details
6. Selecione a versão 27.0.12077973

Clique em Apply e aguarde a instalação

#### ✅ Verificação no projeto
Certifique-se de que o arquivo android/app/build.gradle contenha:

`android {
    defaultConfig {
        ...
        ndkVersion "27.0.12077973"
    }
}`

## 🚀 Rodar o projeto

1. Na barra inferior do VS Code, clique em No devices ou no nome do dispositivo atual
2. Conecte um dispositivo com USB debug ou inicie o emulador
3. No terminal, execute:

`flutter run`
