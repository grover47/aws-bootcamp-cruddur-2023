#!/usr/bin/bash

export TASK_ID=$(aws ecs list-tasks --cluster cruddur --service-name frontend-react-js --query 'taskArns[*]' --output json | jq -r 'join(",")')

aws ecs execute-command  \
--region $AWS_DEFAULT_REGION \
--cluster cruddur \
--task $TASK_ID \
--container frontend-react-js \
--command "/bin/sh" \
--interactive
