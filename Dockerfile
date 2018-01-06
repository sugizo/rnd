FROM jekyll

#LABEL stifix

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN chown jekyll:jekyll $WORKDIR 

EXPOSE 4000

CMD bundle exec jekyll serve --host 0.0.0.0
