FROM nginx:latest
copy  build/ /usr/share/nginx/index.html
EXPOSE 80:80
CMD ["nginx", "-g","daemon off;"]
