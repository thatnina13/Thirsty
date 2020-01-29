curl "http://localhost:4741/products" \
  --include \
  --request POST \
  --header "Content-Type:application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "unit": "'"${UNIT}"'",
      "quantitiy": "'"${QUANTITY}"'"
  }
}'
