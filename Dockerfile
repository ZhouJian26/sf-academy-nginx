FROM nginx
COPY nginx.conf.template /etc/nginx/nginx.conf.template
CMD ["/bin/sh" , "-c" , "envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]