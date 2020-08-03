# EDIT THE BELOW TO YOUR VALUES
export REGION='eu-north1'
export IMAGE='nodesimplewebserver'
export ACCOUNT_NUMBER='123412341234'

aws ecr get-login --no-include-email --region ${REGION} | /bin/bash
cd src
npm install
cd ..
docker build -t ${IMAGE} .
docker tag ${IMAGE}:latest ${ACCOUNT_NUMBER}.dkr.ecr.${REGION}.amazonaws.com/${IMAGE}:latest
docker push ${ACCOUNT_NUMBER}.dkr.ecr.${REGION}.amazonaws.com/${IMAGE}:latest