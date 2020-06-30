#!/bin/bash

API="http://localhost:4741"
URL_PATH="/glass-posts"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "glassPost": {
    "title": "'"${TITLE}"'",
    "body": "'"${BODY}"'",
    "price": "'"${PRICE}"'",
    "imageUrl": "'"${IMGURL}"'"
  }
}'

echo
