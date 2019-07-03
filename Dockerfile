FROM ruby:2.6.3
ENV app /app
    
RUN mkdir $app
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && gem install bundler
WORKDIR $app

ADD . $app
RUN bundle install && bundle exec jekyll build \
    && cp -R _site/* /var/www/html/ \
    && cp -R public/ /var/www/html/

EXPOSE 80
CMD ["nginx"]