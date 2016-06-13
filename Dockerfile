FROM node:4.4
EXPOSE 3000
COPY ./ ./
CMD npm start
