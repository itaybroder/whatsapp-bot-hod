# Filename: Dockerfile

FROM node:lts-buster-slim


# Install Google Chrome Stable and fonts
# Note: this installs the necessary libs to make the browser work with Puppeteer.
RUN apt-get update && apt-get install gnupg wget -y && \
    wget --quiet --output-document=- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/google-archive.gpg && \
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    apt-get update && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install && \
    rm -rf /var/lib/apt/lists/*

RUN  apt-get update && apt-get install -y libxss1 libxtst6 libatk-bridge2.0-0 libgtk-3-0 libx11-xcb1 libnss3 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libasound2 libatspi2.0-0 libpangocairo-1.0-0 libatk1.0-0 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 libnss3

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY server.ts ./

EXPOSE 3000

CMD ["npm", "start"]