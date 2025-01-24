#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u shireesha527 -p dimple@1234
    docker tag appq shireesha527/dev
    docker push shireesha527/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u shireesha527 -p dimple@1234
    docker tag appq shireesha527/prod
    docker push shireesha/prod
fi
