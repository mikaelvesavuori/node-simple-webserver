# EDIT THE BELOW TO YOUR VALUES
export IMAGE='nodesimplewebserver'
export REGISTRY_NAME='nodesimplewebserver'
export REPOSITORY='nodesimplewebserver'
export LOGIN_SERVER=$REGISTRY_NAME.azurecr.io

az acr login --name $REGISTRY_NAME
docker build -t ${IMAGE} .
docker tag $IMAGE $LOGIN_SERVER/$IMAGE:latest
docker push $LOGIN_SERVER/$IMAGE:latest