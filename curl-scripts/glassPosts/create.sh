#!/bin/bash

API="http://localhost:4741"
URL_PATH="/glass-posts"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "glassPost": {
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo

# TITLE="" BODY="" PRICE="" imageURL="" OWNER=""
# TITLE="First Post" BODY="BIG POST" PRICE="$100" IMGURL="" OWNER="5efb89446b16cbf507d6f3a4" sh curl-scripts/glassPosts/create.sh
