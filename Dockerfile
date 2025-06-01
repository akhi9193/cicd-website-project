#use a lightweight web server
FROM nginx:alpine

#Remove default nginz web files
RUN rm -rf /usr/share/nginx/html/*

#copy your app into the nginx web directory
COPY app/ /usr/share/nginx/html

#expose port 80 and start nginx
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
