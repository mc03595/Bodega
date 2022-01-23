#importamos las librerias para heredar de forms

from django.forms import ModelForm,DateInput,TextInput
from django import forms
from .models import Bodega, Categoria, Usuario, Producto, Retiro, Proveedor

#----Formulario  de registro de nueva Bodega----
class BodegaForm(ModelForm):
    class Meta:
        model = Bodega
        fields = '__all__'

        widgets = {
            'nombreBodega' : forms.TextInput(
                attrs = {'class': 'form-control mb-3', 'placeholder':'Ingrese el nombre de la bodega'}),
            'direccionBodega': forms.TextInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Direccion'}),
            'telefonoBodega': forms.TextInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Telefono'}),
            'encargadoBodega': forms.TextInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Nombre del encargado'})
        }
##------ Registro de Proveedores------##

class ProveedoresForm(ModelForm):
    class Meta:
        model = Proveedor
        fields = '__all__'

        widgets = {
            'proveedor' : forms.TextInput(
                attrs = {'class': 'form-control mb-3', 'placeholder':'Ingrese el nombre del Proveedor'}),
            'direccion': forms.TextInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Direccion'}),
            'telefono': forms.TextInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Telefono'}),
            'correo': forms.EmailInput(
                attrs={'class': 'form-control mb-3', 'placeholder': 'Email de Contacto'})
        }

#  ---- Formulario registro Categoria de productos ----#

class CategoriasForm(ModelForm):
    class Meta:
        model = Categoria
        fields = '__all__'

        widgets = {
            'nombreCategoria' : forms.TextInput(
                attrs = {'class': 'form-control mb-3', 'placeholder':'Ingrese el nombre de la Categoria'}),

        }

class ProductosForm(ModelForm):
    class Meta:
        model = Producto
        fields = '__all__'

        widgets = {
            'nombreBodega' : forms.Select(attrs={'class': 'form-select mb-3 text-secondary', 'placeholder':' '}),
            'proveedor' : forms.Select(attrs= {'class': 'form-select mb-3 text-secondary', 'placeholder':'  '}),
            'nombreCategoria': forms.Select(attrs= {'class':'form-select mb-3 text-secondary'}),
            'nombreProducto':forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder':'  '}),
            'nombreColor': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'nombreMedidas': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'nombreMarca': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'nombreModelo': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'nombreSerial': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'stockProducto': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            'precioProducto': forms.TextInput(attrs={'class': 'form-control mb-3', 'placeholder': ''}),
            #'fechaCompra': forms.DateField()

        }