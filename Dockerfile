FROM nginx:latest
COPY ./dist/angular /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

