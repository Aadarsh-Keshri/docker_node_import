FROM node
WORKDIR /developer/node/app_from_github
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Aadarsh-Keshri/node_project_dockerization.git .
ENV PORT=3000
EXPOSE 3000
RUN npm ci
CMD ["npm","start"]
#docker build -t <tag_name> .

#Push an image to DockerHub:
#1.docker login
#2.docker tag <image_name> [account_name]/[image_name_for_DH]
#3.docker push [account_name]/[image_name_for_DH]