from django.urls import path

from . import views

urlpatterns = [
    path('create', views.create, name='user_manual_create'),
    path('view_files', views.view_files, name='user_manual_index'),
    path('download_file', views.download_file, name='download_file'),
    path('edit_file/<str:file_id>', views.edit_file, name='user_manual_edit_file'),
    path('view_myfiles', views.view_by_category, name='user_manual_view_files')
]
