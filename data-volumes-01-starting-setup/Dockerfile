FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

# criando uma variável de ambiente 
# que pode inclusive ser usada dentro do javascript
# essa variavel também pode ser definida ou sobre escrita no cli
# com a tag --env 
# ENV PORT=80

EXPOSE $PORT

# VOLUME [ "/app/feedback" ]
# esta instrução de volume anonimo não ajuda pois quando o container é 
# removido o volume é apagado junto com ele
# porém esse volume anonimo serve pra manter a pasta nodemodules
# sempre inalterada dentro do container
VOLUME [ "/app/node_modules", "/app/temp" ]

CMD [ "npm", "start" ]