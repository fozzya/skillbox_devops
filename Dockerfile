FROM node
RUN mkdir /app
WORKDIR /app

COPY package.json /app
RUN yarn install

COPY . /app
EXPOSE 3000
#RUN yarn test
RUN yarn build
CMD yarn start
