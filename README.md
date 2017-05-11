Question 1
Perancangan aplikasi ojek online dan pelanggan hanya dilayani dengan mobile apps,

Desainlah stack backend/micro service layanan tersebut beserta tools dan alasan mengapa memilih design dan tools tersebut.

Answer 1
Mikroservis akan terdiri dari
1. Authentikasi service berdasar temporary token/JWT setelah login/register.
2. Driver search service
3. Order service
4. Topup/check Balance service
5. Push Notification service
6. Driver/User rating service

Semua akan dicode dengan Go+AWS jika menginginkan high performance, 
akan tetapi jika deadline sangat mepet bisa sementara menggunakan Ruby on Rails+Heroku.


Question 2
Bagaimana menangani keamaanan dalam pengiriman data (backend dan mobile apps) pada sistem diatas.

Jelaskan solusi tersebut beserta alasannya.

Answer 2
1. Untuk mengenali(authentication) dan mengijinkan(authorization) akan digunakan token yang temporary.