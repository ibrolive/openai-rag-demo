# Technical Test Outline

## Introduction

The purpose of this technical test is to assess a candidate's practical skills in software engineering within a controlled environment. This test is designed to simulate real-world problem solving and includes an introduction, a hands-on coding session, and a follow-up discussion to understand the approach taken by the candidate. The total duration of the test is as follows:

- **15 minutes** of introduction to the test setup and objectives
- **3 hours** of hands-on engineering work
- **15 minutes** of technical discussion to review and discuss the solutions and thought processes

---
## In the office or remote
If you are working on your own laptop feel free to use whatever tools and coding languages you want. If came to the office to do the test, then you will get a laptop provided by rabobank with some pre-installed tools and languages listed below. Feel free to install any other tool or language you need. 

### Pre-installed Tools

- ChatGPT client
- Visual Studio Code
- PyCharm
- IntelliJ
- HomeBrew
- Spider

### Pre-installed Coding Languages

- Python3
- JavaScript
- Java
- Node.js
- PHP
- Scala
- C++
- C#
---

## The Case

### Explanation of the Exercise

Candidates are required to build a small backend and a frontend application that interact with each other. The backend should be capable of handling basic RESTful API requests and the candidates are required to make their backend interact with an LLM hosted on Azure (details are in the technical tips section). The frontend should display the data processed by the backend. Both components should then be deployed to Azure. 

## Tips

To spark creativity and encourage a comprehensive approach, candidates should consider the following:

- Think about the user experience when interacting with the frontend.
- Consider the scalability of the backend.
- Look into error handling and security measures for both frontend and backend.
- Use all tools at your disposal. We want to evaluate your ability to develop, similar to a day-to-day in the office so make smart use of Google and ChatGPT. 

## Technical Details

- Candidates will interact with an LLM (large language model) endpoint hosted on Azure to provide specific functionalities within the application. This interaction should be evident in both the backend and frontend implementations. You are allowed to connect to the models that are already pre-setup or create a new open ai deployment in your own resourcegroup.
- Pre-setup GPT-4o-mini: https://open-ai-resource-rob.openai.azure.com/openai/deployments/gpt-4o-mini/chat/completions?api-version=2024-08-01-preview
- Pre-setup Text-embedding: https://open-ai-resource-rob.openai.azure.com/openai/deployments/text-embedding-3-large/embeddings?api-version=2023-05-15
- The pre-setup API key can be found in the Key Vault storage secrets in the azure account that was setup.  Keyvault name: open-ai-keys-rob, secret name: open-ai-key-rob
- The code can be deployed to an assigned azure resource group with your name in it. If your resource group is missing or not working well feel free to use the backup resourcegroup
- Azure account: email:Robapplicant@outlook.com, pwd: TechnicalTester!. You might have to 2 factor authenticate. This is most easily one through the browser and you can ask Paul Miles for the code that was sent to his email. 
- Please make sure to upload your code to this github repository that's shared with you. It's called {your-name-TT}.
- Since everyone takse different approaches you could be blocked by permissions that aren't covered yet for the account. If that happens let us know as soon as possible and we'll give you access to the resource if the request is valid

## Evaluation

### Expectations of the Demo

Candidates are expected to demonstrate a basic but functional application that reflects their technical abilities and understanding of modern application structures. In the demo you'll have time to explain your chain of thoughts behind the decisions you've taken during the development process. Also, you can elaborate on the setbacks, future improvements, architecture etc. 

### Evaluation Attributes

Candidates will be evaluated based on:

- **Creativeness**: Innovative approaches and features implemented.
- **Capability to learn**: Adaptation and utilization of new and existing technologies.
- **Quality code**: Readability, structure, and adherence to best practices.

### Key-steps in the development

- A functioning backend that can process and respond to RESTful API requests.
- A simple frontend that can display the processed data.
- Successful deployment of both components to Azure DevOps.

### Getting started

- On the Rabobank laptop, Create a directory in /documents/ with your name. Here you can make your changes for local development. 
- Make sure to check out your resources in azure with the account provided in the technical details
- Start with a very basic poc before adding creative extra's
- Create a new directory on your local machine for all of your development in documents/
