# EDIT THE BELOW TO YOUR VALUES
export PROJECT_ID='my_project_id'
export IMAGE='nodesimplewebserver'
export REGION='europe-north1'

# Old syntax
#gcloud builds submit --tag gcr.io/${PROJECT_ID}/${IMAGE}

# New syntax!
gcloud beta run deploy $IMAGE --region $REGION --platform managed --source .
