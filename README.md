# Keyword-Based Automation Workflow (n8n)

## 📌 Project Overview
This repository contains an **automation workflow built with n8n** that provides **quick information about a specific topic** based on a simple keyword command.

The goal of the project is to demonstrate how workflow automation can be used to process user input, extract keywords, and return concise, relevant information.

## ⚙️ Technologies Used
- **n8n** – Workflow automation tool
- **Docker** – Containerized environment
- **Docker Compose** – Service orchestration
- **External APIs** – Weather, News, or AI APIs
- **GitHub** – Version control

## 🧠 Workflow Logic
1. **Telegram trigger**  
The workflow receives a text command /start via a telegram bot.
2. **The user inputs a topic about which they want information**  
The keyword (e.g., `weather`) is parsed from the input.

3. **Check topic**  
The workflow checks whether the topic is appropriate and any if relevant information can be found.

4. **Information Lookup**  
The workflow retrieves relevant information using AI from:
- Wikipedia
- News API

5. **Result**  
The workflow gives the user a summary in the form:
Background
Recent developments
Key points.

---

## 📽 Presentation
You can find the project presentation here:  
🔗 **[Project Presentation](https://link-to-your-presentation)**

---

## 👥 Credits
This project was developed by:

- **Denys Piroh**
- **Artem Mazur**
- **Mykhailo Boiko**

---













