curl "http://localhost:4741/products${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type:application/json" \
  --data '{
    "product": {
      "user_id": "'"${USER_ID}"'",
      "name": "'"${NAME}"'",
      "unit": "'"${UNIT}"'",
      "quantitiy": "'"${QUANTITY}"'",
    }
  }'
