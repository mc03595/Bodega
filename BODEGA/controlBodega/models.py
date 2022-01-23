from django.db import models

# Create your models here.
"""Saludos, me llamo Marco Moya, explicare la documentacion del codigo, la tarea asignada es un programa para el control de bodega
    Aqui vamos a escribir el modelo, los campos para la base de datos.
    Agregare datos que quizas no se vayan a usar, pero si me da tiempo los incorporo, quiero hacer un sistema un poco escalable
"""
#Primero se crean las clases independientes o se las que no dependen de otras

class Bodega(models.Model): #Datos de las bodegas
    nombreBodega = models.CharField(max_length=100)
    direccionBodega = models.CharField(max_length=200)
    telefonoBodega = models.CharField(max_length=200)
    encargadoBodega = models.CharField(max_length=50)
    creadoBodega = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'{self.id}: {self.nombreBodega}'

class Proveedor(models.Model):#proveedores de los productos
    proveedor = models.CharField(max_length=50)
    direccion = models.CharField(max_length=120, blank=True)
    telefono = models.CharField(max_length=20, blank=True)
    correo = models.EmailField(blank=True)
    def __str__(self):
        return f'{self.id}: {self.proveedor}'


class Categoria(models.Model): #Categoria o clasificacion de los productos de inventario
    nombreCategoria = models.CharField(max_length=50)
    creadoCategoria = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'{self.id}: {self.nombreCategoria}'

class Usuario(models.Model): #Se Registran las personas que van a retirar los productos
    nombreUsuario = models.CharField(max_length= 50)
    cargoUsuario = models.CharField(max_length= 20)
    creadoUsuario = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f'{self.id}: {self.nombreUsuario}'

#Ahora creamos las clases que relacionan con otras DB


class Producto(models.Model):# Registro de productos, Relacion de muchos a Uno
    nombreBodega = models.ForeignKey(Bodega,on_delete=models.SET_NULL, null=True, blank=True)
    proveedor = models.ForeignKey(Proveedor, on_delete=models.SET_NULL, null=True, blank=True)
    nombreCategoria = models.ForeignKey(Categoria, on_delete=models.SET_NULL, null=True)
    nombreProducto = models.CharField(max_length=150)
    nombreColor = models.CharField(max_length=20,verbose_name="Color", blank=True)
    nombreMedidas = models.CharField(max_length=40,blank=True)
    nombreMarca = models.CharField(max_length=20,blank=True, null=True)
    nombreModelo = models.CharField(max_length=20,blank=True)
    nombreSerial = models.CharField(max_length=20, blank=True)
    stockProducto = models.IntegerField()
    precioProducto = models.IntegerField(verbose_name="Precio Compra", blank=True)
    fechaCompra = models.DateField(auto_now_add=True)
    creadoProducto = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'{self.id}: {self.nombreProducto}'


class Retiro(models.Model): #Retirar productos de la Bodega
    nombreProducto = models.ForeignKey(Producto, on_delete=models.SET_NULL, null=True)
    stockRetiro = models.IntegerField()
    nombreUsuario = models.ForeignKey(Usuario, on_delete=models.SET_NULL, null=True)
    creadoRetiro = models.DateTimeField(auto_now_add=True)

