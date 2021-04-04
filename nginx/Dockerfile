FROM nginx:1.19

LABEL maintainer="Jonas Regner"

COPY ["./templates", "/etc/nginx/templates"]

CMD ["nginx", "-g", "daemon off;"]
