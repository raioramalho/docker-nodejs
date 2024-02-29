# Use uma imagem base do Ubuntu
FROM ubuntu:latest

# Atualize os repositórios e instale Node.js, npm, bash e git
# RUN apt-get update && \
#     apt-get install -y nodejs npm git && \
#     ln -s /usr/bin/nodejs /usr/bin/node

# # Verifique a versão do Node.js e npm
# RUN node -v && npm -v

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos package.json e package-lock.json para o diretório de trabalho
# COPY package*.json ./

# Instale as dependências do projeto
# RUN npm install

# Copie todo o código fonte para o diretório de trabalho
COPY . .

# Exponha a porta em que a aplicação estará rodando
EXPOSE 3000

# Comando para iniciar a aplicação
# CMD ["node", "app.js"]
