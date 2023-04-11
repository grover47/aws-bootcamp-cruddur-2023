#!/usr/bin/bash

export TASK_ID=$(aws ecs list-tasks --cluster cruddur --service-name backend-flask --query 'taskArns[*]' --output json | jq -r 'join(",")')

# set -e # stop if it fails at any point

if [ -z "$1" ]; then
  echo "No TASK_ID argument supplied eg ./bin/ecs/connect-to-service 18bbaf6ce1d64f908bd97cec9207c6c4 backend-flask"
  exit 1
fi

if [ -z "$2" ]; then
  echo "No CONTAINER_ID argument supplied eg ./bin/ecs/connect-to-service 18bbaf6ce1d64f908bd97cec9207c6c4 backend-flask"
  exit 1
fi

TASK_ID=$1
CONTAINER_ID=$2

aws ecs execute-command  \
--region $AWS_DEFAULT_REGION \
--cluster cruddur \
--task $TASK_ID \
--container $CONTAINER_ID \
--command "/bin/bash" \
--interactive