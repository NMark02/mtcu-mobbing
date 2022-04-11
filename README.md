# Monday Morning Mobbing

## 11-4-2022
Docker image used:
- https://hub.docker.com/r/jekyll/jekyll
- https://github.com/envygeeks/jekyll-docker

Commands used to locally run docker container:
```
export JEKYLL_VERSION=3.8.6
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build
```

```
export JEKYLL_VERSION=3.8.6
  docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  -p 4000:4000 \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve
```