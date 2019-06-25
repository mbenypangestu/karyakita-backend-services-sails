FROM node:8.15.0

VOLUME [ "/usr/src/app" ]

EXPOSE 80

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json package.json
RUN npm install && npm update && npm cache clean --force && npm install sails -g && npm install bcrypt --save && npm install -g node-inspect

COPY . .

CMD [ "node", "--inspect=0.0.0.0", "/usr/src/app/app.js" ]

#CMD [ "forever", "start" ,"./app.js","--prod" ]
#CMD [ "node","./app.js","--prod" ]
#CMD [ "tail", "-f", "/dev/null"  ]
