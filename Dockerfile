FROM nginx:stable-alpine

COPY etc/nginx/conf.d/ /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html
COPY site .

ARG GITHUB_SHA
ARG GITHUB_REF
ENV SHA=$GITHUB_SHA
ENV REF=$GITHUB_REF

RUN sed -i 's,SHA,'"$GITHUB_SHA"',' index.html
RUN sed -i 's,REF,'"$GITHUB_REF"',' index.html