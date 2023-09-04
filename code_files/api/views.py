from django.shortcuts import render
from django.http import HttpResponse

from django.template import loader

# Create your views here.
# def main(request):
#     return HttpResponse('Hello')

def home(request):
    return render(request, 'index.html')
  