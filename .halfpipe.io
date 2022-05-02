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

  - type: run
    name: deploy-app
    script: \/exe vela up -f vela.yml
    docker:
      image: eu.gcr.io/halfpipe-io/ee-katee-vela-cli:latest
    vars:
      KATEE_TEAM: move-to-cloud-unless
      KATEE_GKE_CREDENTIALS: ((katee-service-account.key))
      KATEE_APPFILE: vela.yml      
