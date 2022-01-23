from django.contrib import admin
from .models import Bodega,Proveedor ,Categoria, Usuario,Producto, Retiro
# Register your models here.




admin.site.register(Bodega)
admin.site.register(Proveedor)
admin.site.register(Categoria)
admin.site.register(Usuario)
admin.site.register(Producto)
admin.site.register(Retiro)