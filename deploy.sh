#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u shireesha527 -p dimple@1234
    docker tag latest shireesha527/dev
    docker push shireesha527/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u shireesha527 -p dimple@1234
    docker tag latest shireesha527/prod
    docker push shireesha527/prod
fi
