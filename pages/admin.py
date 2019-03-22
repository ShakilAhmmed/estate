from django.contrib import admin
from .models import *


# Register your models here.
class RealtorAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'phone', 'is_mvp', 'hire_date']
    list_display_links = ['name', 'email', 'phone']
    list_filter = ['hire_date', 'is_mvp']
    list_editable = ['is_mvp']
    search_fields = ['name', 'email', 'phone', 'hire_date']
    list_per_page = 25


class ListingAdmin(admin.ModelAdmin):
    list_display = ['realtor', 'title', 'address', 'city', 'state', 'zip_code', 'price', 'sqft', 'is_publised',
                    'published_date']
    list_display_links = ['title', 'address', 'city', 'state', 'zip_code', 'price', 'sqft']
    list_filter = ['address', 'city', 'state', 'zip_code', 'price', 'sqft', 'is_publised', 'published_date',
                   'bedrooms', 'bathrooms', 'garage']
    list_editable = ['is_publised']
    search_fields = ['address', 'city', 'state', 'zip_code', 'price', 'sqft', 'is_publised', 'published_date',
                     'bedrooms', 'bathrooms', 'garage']
    list_per_page = 25


admin.site.register(Realtor, RealtorAdmin)
admin.site.register(Listing, ListingAdmin)
