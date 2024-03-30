from django.shortcuts import render
from hello_world.models import DB_test

def index(request):
    queryset = DB_test.objects.all()
    return render(request, "hello_world/hello_world.html", {'db_tests': queryset})