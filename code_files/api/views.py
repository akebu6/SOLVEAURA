from django.shortcuts import render

# Create your views here.
# def main(request):
#     return HttpResponse('Hello')
def navbar(request):
    return render(request, 'navbar.html')

def home(request):
    return render(request, 'index.html')

def footer(request):
    return render(request, 'footer.html')  
