IMGS_FILE=$1
DEST_REGISTRY=$2
NAMESPACE=$3

for line in $(cat "$IMGS_FILE")
do
  echo syncing $line ...
  skopeo sync --dest-creds ${USERNAME}:${PASSWORD} --src docker --dest docker $line $DEST_REGISTRY/$NAMESPACE
done
