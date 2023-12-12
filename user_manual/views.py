from django.shortcuts import render, redirect
from django.http import FileResponse
from datetime import datetime
import json, os
from django.conf import settings

from utils.helper_functions import get_kc_dict

from .models import UserManual

# Create your views here.
def create(request):
    
    if request.method == 'POST':
        # something
        print("post data: ", request.POST)
        filename = request.POST['filename']
        filetype = request.POST['filetype']
        section = request.POST['section']
        subtype1 = request.POST['subtype1']
        subtype2 = request.POST['subtype2']
        region = request.POST['region']
        
        file_path = ''
        try:
            if 'uploaded_file' in request.FILES:
                uploaded_file = request.FILES ['uploaded_file']
                file_path = 'uploads/knowledgecentre/um/'+datetime.now().strftime('%Y%m%d%I%M%S%p') + uploaded_file.name 
                save_file(uploaded_file,file_path)
        except Exception as ex:
            print("Error:",ex)


            
        um = UserManual(
            filename= filename,
            file_type= filetype,
            filepath = file_path,
            section= section,
            sub_category_1 = subtype1,
            sub_category_2 = subtype2,
            region=region,
            created_at = datetime.now().date(),
            updated_at = datetime.now().date(),
            created_by = "Max",
        )
        um.save()
        return render(request, 'knowledge-centre/create.html', {})    
    
    return render(request, 'knowledge-centre/create.html', {})

def view_files(request):
    
    files = UserManual.objects.all()
    
    files_list = []
    for file in files:
        new_file = {
            "id": file.id,
            "filename": file.filename,
            "filetype": file.file_type,
            "section": file.section,
            "subcategory1": file.sub_category_1,
            "subcategory2": file.sub_category_2,
            "region": file.region,
            "created_by": file.created_by,
            "created_at": file.created_at,
        }
        files_list.append(new_file)
    
    context = json.dumps(files_list, default=str)
    
    return render(request, 'knowledge-centre/view_files.html', {"context": context})


def view_by_category(request):
    
    files = UserManual.objects.all()
    
    print("files: ", files)
    new_dict = get_kc_dict(files)
    print("new_dict: ", new_dict)
    
    # for file in files:
    #     new_file = {
    #         "id": file.id,
    #         "filename": file.filename,
    #         "filetype": file.file_type,
    #         "section": file.section,
    #         "subcategory1": file.sub_category_1,
    #         "subcategory2": file.sub_category_2,
    #         "region": file.region,
    #         "created_by": file.created_by,
    #         "created_at": file.created_at,
    #     }
    #     files_list.append(new_file)
    
    # context = json.dumps(files_list, default=str)
    
    return render(request, 'knowledge-centre/view_myfiles.html', {"context": new_dict})


def view_myfiles(request):
    
    files = UserManual.objects.all()
    
    return render(request, 'knowledge-centre/view_myfiles.html', )


def download_file(request):

    file_id = request.GET['file_id']
    file_record = UserManual.objects.filter(id=file_id).first()
    file_path = file_record.filepath

    # search for file in system
    try:
        base_directory_path = os.path.join(settings.BASE_DIR, file_path)

        return FileResponse(open(base_directory_path, 'rb'), content_type='application/pdf')
    except Exception as ex:
        print(ex)

    return redirect('/user-manuals/view_files')

def edit_file(request, file_id):

    if request.method == 'GET':
        print("file_id: ", file_id)
        file_record = UserManual.objects.filter(id=file_id).first()
        # fetch section code

        return render(request, 'knowledge-centre/edit_file.html', {"record": file_record})    
    
    return render(request, 'knowledge-centre/edit_file.html', {})

def save_file(f,file_path):
    if f:
        with open(file_path, 'wb+') as destination:
            for chunk in f.chunks():
                destination.write(chunk)
                return True
            else:
                return False