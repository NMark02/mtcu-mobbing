FROM jekyll/jekyll:3.8.6
COPY . /srv/jekyll
RUN  jekyll build
CMD ["jekyll", "serve"]
