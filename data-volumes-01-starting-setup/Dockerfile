FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ]
# esta instrução de volume anonimo não ajuda pois quando o container é 
# removido o volume é apagado junto com ele
# porém esse volume anonimo serve pra manter a pasta nodemodules
# sempre inalterada dentro do container
VOLUME [ "/app/node_modules" ]

CMD [ "npm", "start" ]