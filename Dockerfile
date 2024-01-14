FROM mcr.microsoft.com/windows/servercore:ltsc2019
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
