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
<img width="378" height="614" alt="image" src="https://github.com/user-attachments/assets/6579316c-98a5-4896-9ec8-0b1ac54cdaac" />

   The workflow receives a text command via a telegram bot.
3. **Keyword Extraction**  
The keyword (e.g., `weather`) is parsed from the input.

4. **Information Lookup**  
The workflow retrieves relevant information using:
- Predefined responses, or
- External APIs (depending on configuration).

4. **Output Response**  
A short, readable summary is returned to the user.

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












