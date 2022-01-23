#se importan las librerias a utilizar
from django.db.models import Q # Esta es para realizar busquedas
from django.shortcuts import render, redirect, get_object_or_404
from .models import Bodega, Categoria, Usuario,Producto, Retiro, Proveedor
from .forms import  BodegaForm, ProveedoresForm, CategoriasForm,ProductosForm
#importamos messages para enviar mensajes. para sweetalert
from django.contrib import  messages

# Create your views here.
# Realizare Vistas basadas en funciones, proximamente las cambiare por vistas basadas en clases.

def indexx(request):
    return render(request, 'core/index.html')

#Funcion para registrar una NUEVA BODEGA---------------->
def registroBodega(request):
    # si es de tipo post es que queremos guadar la informacion
    if request.method == 'POST':  #Si el metodo es POST
        formaBodega = BodegaForm(request.POST) #Instancia el metodo BodegaForm que esta en forms.py
        if formaBodega.is_valid(): #si la instancia es correcta
            formaBodega.save() #Guarda los datos del formulario
        return redirect(
            'listadobodegas')# Redirecciona al listado de bodegas
    else:
        formaBodega = BodegaForm()
        return render(request, 'core/registroBodega.html', {'formaBodega': formaBodega})

#Funcion para el LISTADO DE BODEGAS--------------->

def listadoBodegas(request):
    bodega = Bodega.objects.order_by('-id')
    return render(request, 'core/listadoBodega.html/', {'bodegas': bodega})

#------ Funcion para EDITAR DE BODEGA------#

def editarBodega(request, id):
    consulta = get_object_or_404(Bodega, pk=id)
    if request.method =='POST':
        formaEditar = BodegaForm(request.POST, instance=consulta)
        if formaEditar.is_valid():
            formaEditar.save()
            messages.success(request,"Modificado correctamente")
            return redirect('../listadobodegas')
    else:
        formaEditar = BodegaForm(instance=consulta)
    return render(request, 'core/editarBodega.html/',{'formaEditar':formaEditar})

#------ Funcion para ELIMINAR UNA BODEGA------#Esta Funcion sera muy similar en todos los casos para eliminar registros de una tabla
def eliminarBodega(request, id):
    eliminar = get_object_or_404(Bodega, pk=id)  # se recibe el objeto e ID seleccionado
    if eliminar:
        eliminar.delete()
        messages.success(request, "Eliminado Correctamente")
    else:
        print("Registro no existe")
    return redirect('listadobodegas')

#------REGISTRO DE CATEGORIAS DE PRODUCTOS------#
def registroCategorias(request):
    # si es de tipo post es que queremos guadar la informacion
    if request.method == 'POST':  #Si el metodo es POST
        formaCategorias = CategoriasForm(request.POST)
        if formaCategorias.is_valid():
            formaCategorias.save()
        return redirect(
            'listadocategorias')
    else:
        formaCategorias = CategoriasForm()
        return render(request, 'core/registroCategoria.html', {'formaCategorias': formaCategorias})

#---- Listado de Categorias----####
def listadoCategorias(request):
    categoria = Categoria.objects.order_by('-id')
    return render(request, 'core/listadoCategoria.html/', {'categorias': categoria})

#---------EDITAR CATEGORIAS------------###

def editarCategoria(request, id):
    consulta = get_object_or_404(Categoria, pk=id)
    if request.method =='POST':
        formaCategorias = CategoriasForm(request.POST, instance=consulta)
        if formaCategorias.is_valid():
            formaCategorias.save()
            messages.success(request,"Modificado correctamente")
            return redirect('../listado_categorias')
    else:
        formaCategorias = CategoriasForm(instance=consulta)
    return render(request, 'core/editarCategoria.html/', {'formaCategorias': formaCategorias})

#-------ELIMINAR CATEGORIA-----------#

def eliminarCategoria(request, id):
    eliminar = get_object_or_404(Categoria, pk=id)  # se recibe el objeto e ID seleccionado
    if eliminar:
        eliminar.delete()
        messages.success(request,"Eliminado Correctamente")
    else:
        print("Registro no existe")
    return redirect('listadocategorias')

#-------REGISTRO DE PROVEEDORES-----#
# El metodo de registro de proveedores es identico al de registro de bodega,  solo cambia el llamado a la base de datos y los estilos
# del formulario
def registroProveedores(request):
    # si es de tipo post es que queremos guadar la informacion
    if request.method == 'POST':  #Si el metodo es POST
        formaProveedores = ProveedoresForm(request.POST)
        if formaProveedores.is_valid():
            formaProveedores.save()
        return redirect(
            'listadoproveedores')
    else:
        formaProveedor = ProveedoresForm()
        return render(request, 'core/registroProveedor.html', {'formaProveedor': formaProveedor})


#---------LISTADO DE PROVEEDORES---------#
def listadoProveedores(request):
    proveedor = Proveedor.objects.order_by('-id')
    return render(request, 'core/listadoProveedor.html/', {'proveedores': proveedor})


# --------------EDITAR PROVEEDORES---------#
def editarProveedores(request, id):
    consulta = get_object_or_404(Proveedor, pk=id)
    if request.method =='POST':
        formaProveedor = ProveedoresForm(request.POST, instance=consulta)
        if formaProveedor.is_valid():
            formaProveedor.save()
            messages.success(request,"Modificado correctamente")
            return redirect('../listado_proveedor')
    else:
        formaProveedor = ProveedoresForm(instance=consulta)
    return render(request, 'core/editarProveedor.html/', {'formaProveedor': formaProveedor})


#--------ELIMINAR PROVEEDORES------#

def eliminarProveedores(request, id):
    eliminar = get_object_or_404(Proveedor, pk=id)  # se recibe el objeto e ID seleccionado
    if eliminar:
        eliminar.delete()
        messages.success(request,"Eliminado Correctamente")
    else:
        print("Registro no existe")
    return redirect('listadoproveedores')

#------REGISTRAR PRODUCTO------#
def registroProducto(request):
    if request.method == 'POST':
        formaProducto = ProductosForm(request.POST)
        if formaProducto.is_valid():
            formaProducto.save()
        return redirect(
            'listadoproductos')
    else:
        formaProducto = ProductosForm()
    return render(request, 'core/registroProducto.html', {'formaProducto': formaProducto})


#------- LISTA DE PRODUCTOS------#
def listadoProductos(request):
    busqueda = request.GET.get("buscar")
    productos = Producto.objects.all()#LLama a todos los elementos de la tabla productos

    if busqueda:
        productos = Producto.objects.filter(
            Q(id__icontains= busqueda) |  #busca en todos los campos
            Q(nombreProducto__icontains=busqueda) |
            Q(nombreColor__icontains=busqueda) |
            Q(nombreMedidas__icontains=busqueda)
           # Q(nombreBodega__icontains=busqueda) |
           #Q(nombreCategoria__icontains = busqueda) |

        ).distinct()

    return render(request, 'core/listadoProducto.html/', {'productos': productos})


#-------EDITAR PRODUCTO-------#
def editarProducto(request, id):
    consulta = get_object_or_404(Producto, pk=id)
    if request.method =='POST':
        formaProducto = ProductosForm(request.POST, instance=consulta)
        if formaProducto.is_valid():
            formaProducto.save()
            messages.success(request,"Modificado correctamente")
            return redirect('../listadoproductos')
    else:
        formaProducto = ProductosForm(instance=consulta)
    return render(request, 'core/editarProducto.html/', {'formaProducto': formaProducto})

#--------ELIMINAR PRODUCTO-------#
def eliminarProducto(request, id):
    eliminar = get_object_or_404(Producto, pk=id)  # se recibe el objeto e ID seleccionado
    if eliminar:
        eliminar.delete()
        messages.success(request,"Eliminado Correctamente")
    else:
        print("Registro no existe")
    return redirect('listadoproductos')