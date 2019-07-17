FROM node:latest
ADD . /app
RUN cd /app; \
    npm i -g truffle \
    npm i web3 --save \
    npm audit fix \
    npm install --production \
    truffle compile
CMD ["npm", "run"]