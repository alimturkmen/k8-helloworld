FROM node:6.9.2
EXPOSE 8005
COPY helloworld2.js .
CMD node helloworld2.js

