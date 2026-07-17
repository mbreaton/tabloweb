FROM node:18-slim
EXPOSE 3400
RUN apt update && apt install -y ffmpeg
COPY . .
RUN npm install
ENTRYPOINT ["npm", "start"]
