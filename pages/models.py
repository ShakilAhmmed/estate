from django.db import models
from datetime import datetime


# Create your models here.
class Realtor(models.Model):
    name = models.CharField(max_length=50)
    email = models.EmailField()
    phone = models.CharField(max_length=50)
    description = models.TextField()
    is_mvp = models.BooleanField(default=False)
    hire_date = models.DateTimeField(default=datetime.now, blank=True)
    profile_image = models.ImageField(upload_to='photos/realtors')
    def __str__(self):
        return self.name

class Listing(models.Model):
    realtor = models.ForeignKey(Realtor, on_delete=models.DO_NOTHING)
    title = models.CharField(max_length=200)
    address = models.TextField()
    city = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    zip_code = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    price = models.IntegerField()
    bedrooms = models.IntegerField()
    bathrooms = models.DecimalField(max_digits=2, decimal_places=1)
    garage = models.IntegerField()
    sqft = models.IntegerField()
    lot_size = models.DecimalField(max_digits=5, decimal_places=1)
    is_publised = models.BooleanField(default=True)
    main_photo = models.ImageField(upload_to='photos/listings')
    photo_1 = models.ImageField(upload_to='photos/listings', blank=True)
    photo_2 = models.ImageField(upload_to='photos/listings', blank=True)
    photo_3 = models.ImageField(upload_to='photos/listings', blank=True)
    photo_4 = models.ImageField(upload_to='photos/listings', blank=True)
    photo_5 = models.ImageField(upload_to='photos/listings', blank=True)
    photo_6 = models.ImageField(upload_to='photos/listings', blank=True)
    published_date = models.DateTimeField(default=datetime.now, blank=True)
