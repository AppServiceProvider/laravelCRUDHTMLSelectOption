php artisan make:observer UserObserver --model=User
php artisan notifications:table
php artisan migrate
php artisan make:notification UserNotify
php artisan make:controller UserController
--------------------------------------
php artisan make:model UserModel