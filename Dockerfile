
# base nginx image
FROM nginx:alpine

# an arbitrary directory to build our site in
WORKDIR .

# copy the project into the container
COPY . .

# download hugo and make it available in PATH
ENV HUGO_VERSION 0.88.1
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN set -x && \
  apk add --update wget ca-certificates && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
  tar xzf ${HUGO_BINARY} && \
  mv hugo /usr/bin

# build the project and copy the result to the nginx folder
RUN /usr/bin/hugo && ls -l
RUN cp -fR public/* /usr/share/nginx/html

EXPOSE 8080











# FROM nginx:alpine as build

# RUN apk add --update \
#     wget
    
# ARG HUGO_VERSION="0.88.1"
# RUN wget --quiet "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
#     tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
#     rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
#     mv hugo /usr/bin

# COPY ./ /site
# WORKDIR /site
# RUN hugo

# #Copy static files to Nginx
# FROM nginx:alpine

# COPY nginx.conf /etc/nginx/
# COPY --from=build /site/public /usr/share/nginx/html

# ENV PORT 8080
# ENV HOST 0.0.0.0
# EXPOSE 8080

# WORKDIR /usr/share/nginx/html
