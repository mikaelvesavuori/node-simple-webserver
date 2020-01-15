export REGION='eu-north1' # EDIT TO YOUR VALUE
export PROJECT_NAME='someproject' # EDIT TO YOUR VALUE
export ACCOUNT_NUMBER='123412341234' # EDIT TO YOUR VALUE

aws ecr get-login --no-include-email --region ${REGION} | /bin/bash
cd src
npm install
cd ..
docker build -t ${PROJECT_NAME} .
docker tag ${PROJECT_NAME}:latest ${ACCOUNT_NUMBER}.dkr.ecr.${REGION}.amazonaws.com/${PROJECT_NAME}:latest
docker push ${ACCOUNT_NUMBER}.dkr.ecr.${REGION}.amazonaws.com/${PROJECT_NAME}:latest