FROM jekyll/builder:3.8.6
RUN  jekyll build

FROM jekyll/jekyll:3.8.6
