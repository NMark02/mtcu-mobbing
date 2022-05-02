# https://concourse.halfpipe.io/teams/move-to-cloud-unless/pipelines/mtcu-mobbing
team: move-to-cloud-unless
pipeline: mtcu-mobbing

triggers:
  - type: git

feature_toggles:
  - update-pipeline

tasks:
  - name: build-app
    type: docker-push
    image: eu.gcr.io/halfpipe-io/mtcu-mobbing
    tag: version
