FROM nginx:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/
ADD https://bootstrapmade.com/content/templatefiles/Arsha/Arsha.zip .
RUN unzip Arsha.zip
RUN mv Arsha/* .
RUN rm -rf Arsha Arsha.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
