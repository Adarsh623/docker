FROM ubuntu:latest
RUN apt update
RUN apt install -y nginx
EXPOSE 80
CMD ["nginx","-g","daemon off"]
# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 3000
# CMD [ "node", "index.js" ]
