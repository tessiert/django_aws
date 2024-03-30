from django.db import models

# Create your models here.
class DB_test(models.Model):
    message = models.CharField(max_length=255, blank=True, default='')