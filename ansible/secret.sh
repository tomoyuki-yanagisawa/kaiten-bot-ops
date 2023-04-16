kubectl -n $PROJECT_NAME create secret generic $PROJECT_NAME-dotenv --from-env-file=../.env.secret
