gcloud auth activate-service-account --key-file $1.json
gcloud config set project $1
for i in $(gcloud beta logging logs list); do gcloud beta logging logs delete $i --quiet; done
