from django.urls import path
from .views import navbar, home, footer

urlpatterns = [
    path('', navbar, name='navbar',),
    path('', home, name='home'),
    path('', footer, name='footer')
]
