from django.contrib import admin
from django.urls import include, path
from . import views


urlpatterns = [
    path('', views.cars, name='car'),
     path('<int:id>', views.car_detail, name='car_detail'),
    path('search', views.search, name='search'),
]
      