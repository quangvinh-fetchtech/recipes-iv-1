# README

* Step To Tests
1. start server rails s
2. Access http://localhost:3000/api-docs/index.html
3. create Registration with email
```
curl -X 'POST' \
  'http://localhost:3000/api/v1/auth' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "email": "string+6@gmail.com",
  "password": "string",
  "password_confirmation": "string"
}'
```
Access token return from server to crete recipes, rating
```
access-token: kGNW83_wkF3yPIQgSUOhSQ 
uid: string+6@gmail.com
client: ZckqU6NNrWa8uLtd_yatmQ
```

4. create recipes 
<img width="1476" alt="Screen Shot 2022-08-15 at 20 05 23" src="https://user-images.githubusercontent.com/79433829/184640367-536a6d64-0b29-4c94-a985-ad2ec1abe54b.png">
5. create rating
<img width="1470" alt="Screen Shot 2022-08-15 at 20 06 10" src="https://user-images.githubusercontent.com/79433829/184640484-ab88c1d5-316c-4a16-8810-70d0df886a83.png">

6. list recipes 
<img width="1459" alt="Screen Shot 2022-08-15 at 20 06 45" src="https://user-images.githubusercontent.com/79433829/184640580-2fa6232a-9990-4e0a-8e50-9e63be819086.png">

7. show recipes 
<img width="1468" alt="Screen Shot 2022-08-15 at 20 07 33" src="https://user-images.githubusercontent.com/79433829/184640703-e4fa1e5c-6b63-4c8f-972a-15f879d050e5.png">
