FROM node:8.4.0
ENV NODE_ENV local
WORKDIR /graphql
COPY . .
RUN npm install -g yarn
RUN yarn install
RUN cd client && yarn install
EXPOSE 9000 3001 5858 5000
RUN echo "Started GraphQL"
