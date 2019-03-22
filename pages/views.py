from django.core.paginator import Paginator
from django.shortcuts import render, get_object_or_404
from .models import Listing
from django.http import HttpResponse


# Create your views here.
def home(request):
    listing = Listing.objects.order_by('-published_date').filter(is_publised=True)[:3]
    return render(request, 'pages/home.html', {'listing_data': listing})


def about(request):
    return render(request, 'pages/about.html')


def listings(request):
    listing = Listing.objects.order_by('-published_date').filter(is_publised=True)
    paginator = Paginator(listing, 9)
    page = request.GET.get('page')
    listing_data = paginator.get_page(page)
    return render(request, 'pages/listings.html', {'listing_data': listing_data})


def listing(request, listing_id):
    listing_data=Listing.objects.get(id=listing_id)
    return render(request,'pages/listing.html',{'listing_data':listing_data})
