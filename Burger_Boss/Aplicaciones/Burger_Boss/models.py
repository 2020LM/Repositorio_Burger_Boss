#Crea modelos
from django.db import models

"""class Producto(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=150)
    costo = models.IntegerField()
    tipo = models.IntegerField()

class Tipo(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=150)
class Hamburguesa(models.Model):
    id = models.AutoField(primary_key=True)

class Pedido(models.Model):
    id = models.AutoField(primary_key=True)"""

class Tabla_Extra(models.Model):
    extra_tabla = models.CharField(max_length= 150)
    cantidad = models.IntegerField(default=0)
    ok = models.AutoField(primary_key=True)

class Tabla_Producto(models.Model):
    hamburguesa = models.CharField(max_length= 150)
    producto = models.CharField(max_length=150)
    cantidad = models.IntegerField(default=0)
    ok = models.AutoField(primary_key=True)

class Tabla_Ingrediente(models.Model):
        extra_tabla = models.CharField(max_length=150)
        cantidad = models.IntegerField(default=0)
        ok = models.AutoField(primary_key=True)

class Producto(models.Model):
    CATEGORIA = (
        ('queso', 'Queso'),
        ('carne', 'Carne'),

    )
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=150)
    descripcion = models.TextField(default="")
    costo = models.FloatField(default=0)
    categoria = models.CharField(default='queso',max_length=150,choices=CATEGORIA)


    def _str_(self):
        return self.nombre

    class Meta:
        db_table = 'producto'

class Ingrediente(models.Model):

    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=150)
    descripcion = models.TextField(default="")
    costo = models.FloatField(default=0)

    def _str_(self):
        return self.nombre



    class Meta:
        db_table = 'ingredientes'








    class Meta:
        db_table = 'ingredientes'

class Extra(models.Model):
    CATEGORIA= (
                 ('bebida', 'Bebida'),
                 ('guarnicion', 'Guarnición'),
                 ('postre', 'Postre'),
                )
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=150)
    descripcion = models.TextField(default="")
    costo = models.FloatField(default=0)
    pedidos = models.ManyToManyField(Tabla_Extra)
    categoria = models.CharField(default='normal',max_length=150,choices=CATEGORIA)

    def _str_(self):
        return self.nombre

class Hamburguesa(models.Model):
    TIPO_DE_PAN = (
                 ('normal', 'Normal'),
                 ('integral', 'Integral'),
                 ('de_oregano', 'De orégano'),
                )
    TIPO_DE_CARNE = (
        ('carne', 'Carne'),
        ('pollo', 'Pollo'),
        ('pescado', 'Pescado'),
    )
    TIPO_DE_QUESO = (
        ('americano', 'Ameriacano'),
        ('ricota', 'Ricota'),
        ('azul', 'Azul'),
    )
    id = models.AutoField(primary_key=True)
    pan = models.CharField(default='normal',max_length=150,choices=TIPO_DE_PAN)
    carne = models.CharField(default='carne',max_length=150)
    queso = models.CharField(default='Ricota',max_length=150)

    ingrediente = models.CharField(default='ninguno',max_length=150)

    class Meta:
        db_table = 'hamburguesa'


"""class Hamburguesa_Ingrediente(models.Model):

    hamburguesa = models.ForeignKey(Hamburguesa,null=True,on_delete=models.SET_NULL)
    ingrediente = models.ForeignKey(Ingrediente,null=True,on_delete=models.SET_NULL)
    cantidad = models.IntegerField(default=0)
"""

class Pedido(models.Model):
    id = models.AutoField(primary_key=True)
    carne = models.IntegerField(default=0)
    pollo = models.IntegerField(default=0)
    queso = models.IntegerField(default=0)
    lechuga = models.IntegerField(default=0)
    ketchup = models.IntegerField(default=0)
    mostaza = models.IntegerField(default=0)
    mayonesa = models.IntegerField(default=0)
    BBQ = models.IntegerField(default=0)
    refresco_de_cola = models.IntegerField(default=0)
    refresco_de_naranja = models.IntegerField(default=0)
    refresco_de_limón = models.IntegerField(default=0)
    papas_fritas = models.IntegerField(default=0)
    aros_de_cebolla = models.IntegerField(default=0)
    curly_fries = models.IntegerField(default=0)
    helado_de_vainilla = models.IntegerField(default=0)
    helado_de_chocolate = models.IntegerField(default=0)
    helado_de_fresa = models.IntegerField(default=0)
    nombre = models.CharField(max_length=150,default='')
    apellido = models.CharField(max_length=150,default='')
    telefono = models.IntegerField(default=0)
    estado = models.CharField(max_length=150,default='Nuevo')


class Burger_Boss(models.Model):
    INICIAL_TELEFONO = (
        ('414', '0414'),
        ('424', '0424'),
        ('412', '0412'),
        ('416', '0416'),
        ('212', '0212')
    )
    id = models.AutoField(primary_key= True)
    CI = models.IntegerField(null=True)
    nombre = models.CharField(max_length= 150)
    apellido = models.CharField(max_length= 150)
    ubicacion = models.TextField()
    inicial_del_numero_de_telefono = models.CharField(max_length=150,choices=INICIAL_TELEFONO)
    telefono = models.IntegerField()
    email = models.EmailField(max_length=200,null=True)




class Pedido2(models.Model):
    ESTADO = (
        ('nuevo','Nuevo'),
        ('en_proceso','En proceso'),
        ('listo','Listo'),
        ('entregado','Entregado'))

    numero_de_pedido = models.AutoField(primary_key=True)
    estado = models.CharField(choices=ESTADO,default='nuevo',max_length=150)
    Burger_Boss = models.ForeignKey(Burger_Boss,null=True,on_delete= models.SET_NULL)
    hamburguesas = models.ManyToManyField(Hamburguesa)
    bebida = models.CharField(default='ninguno',max_length=150)
    guarnicion = models.CharField(default='ninguno', max_length=150)
    postre = models.CharField(default='ninguno', max_length=150)


