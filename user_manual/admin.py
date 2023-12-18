from django.contrib import admin
from .models import Filetype,First_Category,Secondary_Category, My_model

# Register your models here.
admin.site.register(Filetype)
admin.site.register(Secondary_Category)
admin.site.register(First_Category)
admin.site.register(My_model)
