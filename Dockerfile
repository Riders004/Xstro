FROM node:alpine3.19
ENV NODE_ENV=production
RUN apk add --no-cache git
RUN git clone https://github.com/Riders004/Xstro /Xstro
WORKDIR /Xstro
RUN yarn install --production
EXPOSE 8000
CMD ["npm", "start"]
