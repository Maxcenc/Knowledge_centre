from django.db import models

# Create your models here.
class UserManual(models.Model):
    filename = models.CharField(max_length=100)
    file_type = models.CharField(max_length=100)
    sub_category_1 = models.CharField(max_length=100)
    sub_category_2 = models.CharField(max_length=100)
    filepath = models.CharField(max_length=400)
    section = models.CharField(max_length=100)
    region = models.CharField(max_length=100)
    created_at = models.DateField()
    updated_at = models.DateField()
    created_by = models.CharField(max_length=50)
