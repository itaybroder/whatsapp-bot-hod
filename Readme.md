# 🤖 Whatsapp-Bot-Hod

This project provides an easy way to implement WhatsApp bots using Node.js and the `whatsapp-web.js` library. 

## 🚀 Features

- 🎫 QR code generation for WhatsApp Web login
- 📩 Message listening and logging
- 🗄️ Session management

## 💻 Installation

1. 📂 Clone this repository
2. 📦 Run `npm install` to install the dependencies
3. 🚀 Run `npm start` to start the bot

## 🛠️ Usage

The bot will generate a QR code upon startup. Scan this QR code with your WhatsApp mobile app to log in. Once logged in, the bot will listen for incoming messages and log them to the console.

## 📚 Dependencies

- `whatsapp-web.js`: A WhatsApp client library for Node.js that connects through the WhatsApp Web browser app
- `qrcode-terminal`: A library to generate QR codes in the terminal

## 🐳 Docker Support

A Dockerfile is included for building a Docker image of the bot. The Dockerfile includes instructions for installing Google Chrome, which is required for `whatsapp-web.js` to function.

## 🤝 Contributing

Contributions are welcome. Please submit a pull request or create an issue to discuss the changes you wish to make.

## 📜 License

This project is licensed under the ISC license.
