while true; do

ID=$(curl --silent --location --request POST 'http://arch.homework/otusapp/vtimoshenko/user' --header 'Content-Type: application/json' --data-raw '{
  "username": "johndoe589",
  "firstName": "John",
  "lastName": "Doe",
  "email": "bestjohn@doe.com",
  "phone": "+71002003040"
}' | jq -r '.id')
curl --silent --location --request GET "http://arch.homework/otusapp/vtimoshenko/user/$ID" >> /dev/null

done
