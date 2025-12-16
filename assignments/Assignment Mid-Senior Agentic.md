# Data Scientist technical test

---

## Introduction

The purpose of this technical test is to evaluate a candidate’s ability to build a multi-funtion agent. You will be tasked with building a agent with access to at least 2 small functions and to make it able to come to solutions by using it's functions in a smart way.

### Test duration:
- **Introduction**: 15 minutes to cover test setup and objectives
- **Coding task**: 3 hours of hands-on engineering work
- **Technical discussion**: 15 minutes to review solutions and discuss thought processes

---

## Pre-installed tools

- ChatGPT client
- Visual Studio Code
- PyCharm
- IntelliJ
- HomeBrew
- Spider
---

## Pre-installed coding languages

- Python3
- JavaScript
- Java
- Node.js
- PHP
- Scala
- C++
- C#

---
## Libraries
Feel free to use libraries you are comfortable with (e.g., **requests** for API calls, **pandas**, **numpy**, **faiss** for similarity search, **langchain** for function calling, etc.).


## The Case

### Exercise overview
You are tasked with building a small agent that has access to at least 2 functions. The functions can be anything you want, as long as they can be accessed by the agent and as long as they achieve different things for different requests.

Your Agent should:
- Accept a **user query** 
- Decide which functions are relevant to call
- Give a response with the retreived information through function calling in natural language. 

This API (hosted locally) should be ready for integration with a frontend application.

### Key focus areas:
- **Agentic functionalities**: Agent should be able to determine which functions to call in which situations and use the functions to enhance it's answers
- **Backend/api development**: Create a solid backend with understandable clean code. 
- **Cloud experience**: Work in azure environment to deploy the solution and connect and setup relevant resources


---

## Tips

Here are some guidelines to help you approach the task:

- **Use case**: Start with designing a use case/user flow of something with multiple steps/functionalities that you want your agent to be able to complete
- **Agent structure**: Setup the template for your agent structure that you want to achieve in your backend
- **Mock your functions**: It's recommended to first mock your functions so you can make the whole use case work before working on the detailed functions
- **Add functions**: Finish with filling in the functions
- **Keep code runnable**: Make sure you regularly upload and test your code. The time limit is short for this assignment so make sure you always have a demo'able project that you can show
- **Tool usage**: Use all available tools and libraries to enhance your solution. You are encouraged to research and leverage resources like **ChatGPT** to assist in your development process, but make sure that you understand your pushed code in detail.

###
Here are some examples to help spark some inspiration
- An agent that can give you currency conversions based on countries (functions to get the currency rates, and a function to get the currency for a country)
- An agent that can scan a pdf document and based on information in the document use another function to enhance the information (whatever document and enhancement you can think of)
- An agent that can check the temperature and tell you if you can wear shorts (with some kind of function defining when you can wear shorts)
- .... be creative

---

## Technical Details

**LLM endpoint on Azure**: Candidates will use an LLM hosted on Azure to provide specific functionalities within the application. The interaction with this LLM should be evident in the backend code.

- **Endpoint for LLM hosted on Azure**: 
  - **GPT-4o-mini**: [https://open-ai-resource-rob.openai.azure.com/openai/deployments/gpt-4o-mini/chat/completions?api-version=2024-08-01-preview](https://open-ai-resource-rob.openai.azure.com/openai/deployments/gpt-4o-mini/chat/completions?api-version=2024-08-01-preview)
  - **Text-embedding**: [https://open-ai-resource-rob.openai.azure.com/openai/deployments/text-embedding-3-large/embeddings?api-version=2023-05-15](https://open-ai-resource-rob.openai.azure.com/openai/deployments/text-embedding-3-large/embeddings?api-version=2023-05-15)
  
- **API Key**: You can find the API key in the **Key Vault storage secrets** in the Azure account that was set up. The KeyVault name is `open-ai-keys-rob`, and the secret name is `open-ai-resource-rob`.
  ![image](Azure%20highlighted.png)

- **Azure Account Information**:
  - **Email**: Robapplicant@outlook.com
  - **Password**: TechnicalTester!

- **GitHub**: Make sure to upload your code to a GitHub repository (feel free to use the current GitHub account and create a new repo, or create it in your own GitHub account and add `robonboarding@outlook.com` as a contributor).

If you encounter issues such as permission problems or missing access, let us know as soon as possible, and we'll grant you access to the necessary resources.

---

## Evaluation

### Expectations of the demo

During the demo, you will walk through your solution and demonstrate the following:
- **Example use case**: show a/some examples of flows that your agent is able to complete
- **Code quality**: Highlight the decisions you took in writing your code. Think about structure, documentation, if time allows testing etc.
- **Understanding of your code**: Since we allow usage of gpt or other code helper solutions, we do expect you have a deep understanding of the code.
- **Cloud usage**: If you were able to, highlight the approach you took to deploy your code and the resources you used for it.

### Evaluation criteria

- **Functionality**: Ensure that Agent successfully solves the tasks you give it
- **Complexity of agent**: More complex agents that are able to complete sequential function calling, or more complex functions will be rated better
- **Mastery of azure**: Deployed applications (opposed to local applications) will score better in the review
- **Optimizations**: Discuss any optimizations you’ve made to improve retrieval accuracy or the generation phase’s performance.
- **Code quality**: Present your code structure and explain your design choices. How would you scale or maintain your solution?

---

## Key steps in development

1. **Use case**: Start with designing a use case/user flow of something with multiple steps/functionalities that you want your agent to be able to complete
2. **Agent structure**: Setup the template for your agent structure that you want to achieve in your backend
3. **Add functions**: Finish with filling in the functions
4. **Deploy your solution to azure**: Deploy your solution to azure in any way you like (this step can take a lot of time, so if you can't complete it, think of the approach that you'd take and do some preparational work as far as you can get.

