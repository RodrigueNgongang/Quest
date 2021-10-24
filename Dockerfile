FROM node:10
WORKDIR /usr/src
RUN git clone https://github.com/rearc/quest.git
RUN mv quest/* ./
RUN npm install
EXPOSE 3000
ENV SECRET_WORD TwelveFactor
CMD [ "npm", "start" ]