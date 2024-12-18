from django.urls import path
from anik import views

urlpatterns = [
    path('', views.home, name='home')
    ]