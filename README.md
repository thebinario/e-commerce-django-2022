# e-commerce-django-2022


###Start Project
````
1. docker-compose up --build
2. docker-compose up -d
````

###Run tests
````
docker-compose exec web pytest
````

###Run tests generate report
````
docker-compose exec web pytest --cov --cov-report=html
````

### Migrations
````
docker-compose exec web python manage.py makemigrations
docker-compose exec web python manage.py migrate
````

### Create super user
````
docker-compose exec web python manage.py createsuperuser 
````


