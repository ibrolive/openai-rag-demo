# Junior Data Scientist Technical Test

---

## Introduction

The purpose of this technical test is to evaluate your ability to process and analyze data, work with a cloud-based AI service, and apply basic data science techniques. You will be tasked with building a simplified **Retrieval-Augmented Generation (RAG)** solution using the **OpenAI API hosted on Azure**. 
Your focus will be on:
- Processing and analyzing data
- Retrieving relevant information from a document collection
- Evaluating and improving the quality of results

### Test Duration:
- **Introduction**: 15 minutes to cover test setup and objectives
- **Coding Task**: 3 hours of hands-on engineering work
- **Technical Discussion**: 15 minutes to review solutions and discuss thought processes

---

## Pre-installed Tools

- ChatGPT client
- Visual Studio Code
- PyCharm
- IntelliJ
- HomeBrew
- Spider
---

## Pre-installed Coding Languages

- Python3
- JavaScript
- Java
- Node.js
- PHP
- Scala
- C++
- C#

---
## Libraries: 
You are free to use libraries you are comfortable with (e.g., requests for API calls, pandas, numpy, **faiss** for similarity search, etc.)

## The Case

### Explanation of the Exercise
You are tasked with building a **RAG (Retrieval-Augmented Generation)** solution to interact with a document collection (e.g., Wikipedia articles or data downloaded from a website). The system should retrieve relevant data based on user queries and then use the **OpenAI API** to generate a coherent, informative response.

For this junior-level task, you can focus on implementing the solution in a **Jupyter Notebook**. This simplifies the setup and avoids the need for an API integration unless you wish to attempt it.

Your workflow will involve:  
1. **Loading and processing a dataset**: Prepare a document set for retrieval.  
2. **Retrieving relevant data**: Develop a method to search the document collection.  
3. **Generating responses**: Use the OpenAI API to generate answers based on retrieved data.

### Key focus areas:
- **Data retrieval**: Efficiently searching and retrieving relevant information from the document set.  
- **Data augmentation**: Using the OpenAI API to enhance the retrieved data for user queries.  
- **Output evaluation**: Evaluating the quality of the retrieval process and generated responses.  

---

## Tips

To encourage a comprehensive approach, candidates should keep the following in mind:

- **Start simple**: Focus on building a basic end-to-end workflow before refining.  
- **Data preprocessing**: Consider how to clean and structure the dataset to improve retrieval.  
- **API usage**: Make efficient use of the OpenAI API for response generation. Handle errors or rate limits gracefully.  
- **Evaluation**: Think about how to assess the accuracy and relevance of your outputs. Metrics like precision and recall can help.  
- **Experiment**: Feel free to explore additional improvements if time permits (e.g., testing embeddings or different retrieval strategies).  

---
## Technical details

**LLM endpoint on Azure**: Candidates will use an LLM hosted on Azure to provide specific functionalities within the application.

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

### Example Python Script for Azure OpenAI Integration

Here is a complete Python script to interact with Azure OpenAI using the **GPT-4o-mini** model for generating a creative tagline:

```python
import os
from openai import AzureOpenAI

class OpenAIChatAssistant:
    """
    A simple class to interact with Azure OpenAI API for generating chat completions.
    """
    def __init__(self, api_key: str, endpoint: str, deployment_name: str = 'gpt-4o-mini'):
        """
        Initialize with the Azure OpenAI credentials.

        Args:
            api_key (str): Azure OpenAI API key.
            endpoint (str): Azure OpenAI endpoint URL.
            deployment_name (str): The deployment name for the OpenAI model.
        """
        self.client = AzureOpenAI(
            api_key=api_key,
            api_version="2024-08-01-preview",
            azure_endpoint=endpoint
        )
        self.deployment_name = deployment_name

    def generate_response(self, prompt: str) -> str:
        """
        Generate a response from the model based on the given prompt.

        Args:
            prompt (str): The user query to generate a response.

        Returns:
            str: The AI-generated response.
        """
        # Send the completion request
        messages = [
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": prompt}
        ]
        response = self.client.chat.completions.create(
            model=self.deployment_name,
            messages=messages,
        )
        return response.choices[0].message.content

# Example usage:
if __name__ == "__main__":
    # Replace these values with your actual credentials
    api_key = "YOUR_AZURE_OPENAI_API_KEY"
    endpoint = "YOUR_AZURE_OPENAI_ENDPOINT"

    assistant = OpenAIChatAssistant(api_key=api_key, endpoint=endpoint)
    prompt = "Write a tagline for an ice cream shop."
    
    # Get the response from the model
    response = assistant.generate_response(prompt)
    print("Generated Response: ", response)
```

## Evaluation

### Expectations of the demo

During the demo, you will walk through your solution and demonstrate the following:  

- **Functionality**: Show how you retrieve relevant data and generate meaningful responses using the OpenAI API.  
- **Output evaluation**: Share how you assessed the quality of retrieval and generation, including any metrics you used or would use if you had more time.  
- **Workflow explanation**: Explain your thought process and design choices for your solution.  
- **Code readability**: Ensure your code is organized and easy to understand.  

### Evaluation criteria
Your submission will be assessed based on:  

- **Data processing skills**: Ability to preprocess and retrieve relevant data.  
- **Problem-solving**: Effectiveness of your retrieval and response generation methods.  
- **Output quality**: Relevance and coherence of the responses.  
- **Code quality**: Readability, structure, and comments.  

---

## Key Steps in Development

1. **Prepare the dataset**: Load and preprocess a collection of documents (e.g., clean text, tokenize, etc.). You can download any text document online (wikipedia article, few chapters of your favourite book, a scientific paper)
2. **Data retrieval**: Develop a simple method to search the dataset based on a user query.  
3. **Generate responses**: Use the OpenAI API to create responses augmented with the retrieved data.  
4. **Evaluation**: Think of ways to assess the quality of retrieval and responses (e.g., relevance, coherence).  
5. **Optional enhancements**: Think of different embedding models/parameters or other tools to improve retrieval accuracy.
   
---

## Getting started

- On the Rabobank laptop, Create a directory in /documents/ with your name. Here you can make your changes for local development. 
- Make sure to check out your resources in azure with the account provided in the technical details
- Start with a very basic poc before adding creative extra's
- Create a new directory on your local machine for all of your development in documents/
