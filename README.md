Basic Microservices for Online Shopping Platform

Make sure all three services are running fine locally before doing anything. Also, here we are using RabbitMq and Reddis too so set them up locally so you would not face any issues while running the APIs locally.

-> ALso change the .env.ex to .env in all three services so it can connect to the database.

Test command for user service: curl -X POST http://localhost:3001/users/register -H "Content-Type: application/json" -d '{"name":"test", "email"test:"@example.com", "password":""}'

Invoke-WebRequest -Uri http://localhost:3001/users/register -Method POST -ContentType "application/json" -Body '{"name":"test", "email":"test@example.com", "password":"1234"}'
Use the above command to test whether the user service is working fine. 

Invoke-WebRequest -Uri http://localhost:3002/product/create -Method POST -ContentType "application/json" -Body '{"name":"New Product", "description":"A new product description", "price":99.99}'


Invoke-WebRequest -Uri http://localhost:3002/product/buy -Method POST -ContentType "application/json" -Body '{"ids":["668b7c6ca8b30a0fe3823a72"]}'
