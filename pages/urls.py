from django.urls import path
from . import views
urlpatterns=[
    path('',views.home,name="home"),
    path('about',views.about,name="about"),
    path('listings',views.listings,name="listings"),
    path('listing/<int:listing_id>',views.listing,name="listing")
]