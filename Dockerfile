FROM google/cloud-sdk:alpine

RUN gcloud components install alpha beta --quiet

WORKDIR /usr/app
COPY . /usr/app
