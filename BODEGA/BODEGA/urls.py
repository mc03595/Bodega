"""BODEGA URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from controlBodega import views as controlBodega_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', controlBodega_views.indexx, name="index"),

    path('registrobodega/', controlBodega_views.registroBodega, name="registrobodega"),
    path('listadobodegas/',controlBodega_views.listadoBodegas, name = "listadobodegas"),
    path('editarbodegas/<int:id>',controlBodega_views.editarBodega, name= "editarbodegas"),
    path('eliminarbodega/<int:id>',controlBodega_views.eliminarBodega,name = "eliminarbodega"),

    path('registro_categorias/', controlBodega_views.registroCategorias, name='registrocategorias'),
    path('listado_categorias/', controlBodega_views.listadoCategorias, name='listadocategorias'),
    path('editarcategoria/<int:id>', controlBodega_views.editarCategoria, name ='editarcategoria'),
    path('eliminarcategoria/<int:id>',controlBodega_views.eliminarCategoria, name='eliminarcategoria'),

    path('registro_proveedor/',controlBodega_views.registroProveedores, name='registroproveedor'),
    path('listado_proveedor/',controlBodega_views.listadoProveedores, name = 'listadoproveedores'),
    path('editarproveedor/<int:id>',controlBodega_views.editarProveedores, name='editarproveedores'),
    path('eliminarproveedor/<int:id>', controlBodega_views.eliminarProveedores, name='eliminarproveedor'),

    path('registroproductos/', controlBodega_views.registroProducto, name='registrarproducto'),
    path('listadoproductos/',controlBodega_views.listadoProductos, name='listadoproductos'),
    path('editarproducto/<int:id>',controlBodega_views.editarProducto, name='editarproducto'),
    path('eliminarproducto/<int:id>', controlBodega_views.eliminarProducto, name='eliminarproducto'),

]
