FROM nginx:alpine

ARG BUILD_DATE
ENV BUILD_DATE=${BUILD_DATE}

COPY index.html /usr/share/nginx/html/index.html

RUN sed -i "s/{{BUILD_DATE}}/${BUILD_DATE}/g" /usr/share/nginx/html/index.html
