FROM nginx:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/
ADD https://bootstrapmade.com/content/templatefiles/Bootslander/Bootslander.zip .
RUN unzip Booslander.zip
RUN mv Bootslander/* .
RUN rm -rf Bootslander Bootslander.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
