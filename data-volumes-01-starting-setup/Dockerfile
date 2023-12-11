FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

# argumentos podem ter valor default ou podem ser sobrescritos no cli
# com a tag --build-arg DEFAULT_PORT=8000 nesse caso
# colocar proximo de onde usa pra não fica recriando varias layers
ARG DEFAULT_PORT=80

# criando uma variável de ambiente 
# que pode inclusive ser usada dentro do javascript
# essa variavel também pode ser definida ou sobrescrita no cli
# com a tag --env 
# ENV PORT=80
ENV PORT=${DEFAULT_PORT}

EXPOSE $PORT

# VOLUME [ "/app/feedback" ]
# esta instrução de volume anonimo não ajuda pois quando o container é 
# removido o volume é apagado junto com ele
# porém esse volume anonimo serve pra manter a pasta nodemodules
# sempre inalterada dentro do container
VOLUME [ "/app/node_modules", "/app/temp" ]

CMD [ "npm", "start" ]