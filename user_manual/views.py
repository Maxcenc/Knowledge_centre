from django.shortcuts import render, redirect
from django.http import FileResponse, JsonResponse
from datetime import datetime
import json, os
from django.conf import settings
from .models import Categories, First_Category, Secondary_Category, Filetype
from django.shortcuts import render
from django.db.models import Q


from utils.helper_functions import get_kc_dict

from .models import UserManual

# Create your views here.
def create(request):
    
    if request.method == 'POST':
        # something
        print("post data: ", request.POST)
        filename = request.POST['filename']
        filetype = request.POST['category_id']
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


        file_type= Filetype.objects.filter(id=filetype).first() if filetype else None
        subtype1_ = First_Category.objects.filter(id=subtype1).first() if subtype1 else None
        subtype2_ = Secondary_Category.objects.filter(id=subtype2).first() if subtype2 else None
        um = UserManual(
            filename= filename,
            file_type= file_type.name if file_type else "",
            filepath = file_path,
            section= section,
            sub_category_1 = subtype1_.name if subtype1_ else "",
            sub_category_2 = subtype2_.name if subtype2_ else "",
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
def get_category(request, file_type, cat_1, cat_2):
    file_ = UserManual.objects.filter(file_type=file_type).all()
    file_ = UserManual.objects.filter(file_type=file_type, cat_1=cat_1).all()
    file_ = UserManual.objects.filter(file_type=file_type, cat_1=cat_1, cat_2=cat_2).all()
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

def get_files(request, file_type_id):
    if request.method == "GET":
        # Connect to the database and query for relevant options
        
        options = First_Category.objects.filter(file_type_id=file_type_id).all()

        options_list = []

        for op in options:
            newobj = {
                "id": op.id,
                "file_type_id": op.file_type_id,
                "name": op.name,
                
            }
            options_list.append(newobj)

        return JsonResponse({"options": list(options_list)})
    
def get_cat2(request, file_type, selected_cat):
    if request.method == "GET":
        # Connect to the database and query for relevant options
        
        second_option = Secondary_Category.objects.filter(file_id=file_type, category_id=selected_cat).all()

        print("cats: ", second_option)
        options_list = []

        for op in second_option:
            newobj = {
                "id": op.id,
                "file_id": op.file_id,
                "name": op.name,
                "category_id": op.category_id
                
            }
            options_list.append(newobj)

        print("option_list: ", options_list)

        return JsonResponse({"options_list": list(options_list)})

def save_file(f,file_path):
    if f:
        with open(file_path, 'wb+') as destination:
            for chunk in f.chunks():
                destination.write(chunk)
                return True
            else:
                return False