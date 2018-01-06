FROM jekyll/jekyll:3.4

#LABEL stifix

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN chown jekyll:jekyll /srv/jekyll

EXPOSE 4000

CMD bundle exec jekyll serve --host 0.0.0.0
