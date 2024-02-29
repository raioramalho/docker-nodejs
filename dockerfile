# Use uma imagem base do Node.js
FROM node:latest

# Instale bash e git
RUN apk update && \
    apk add --no-cache bash git

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie todo o código fonte para o diretório de trabalho
COPY . .

# Exponha a porta em que a aplicação estará rodando
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
