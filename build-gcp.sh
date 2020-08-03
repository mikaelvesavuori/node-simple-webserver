# EDIT THE BELOW TO YOUR VALUES
export PROJECT_ID='my_project_id'
export IMAGE='nodesimplewebserver'

gcloud builds submit --tag gcr.io/${PROJECT_ID}/${IMAGE}