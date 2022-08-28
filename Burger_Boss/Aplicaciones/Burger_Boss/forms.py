from django import forms
from .models import Producto,Pedido,Burger_Boss,Extra,Ingrediente,Hamburguesa

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['nombre','descripcion','costo','categoria']

class PedidoForm(forms.ModelForm):
    class Meta:
        model = Pedido
        fields = '__all__'

class Burger_BossForm(forms.ModelForm):
    class Meta:
        model = Burger_Boss
        fields = '__all__'

class Burger_BossForm(forms.ModelForm):
    class Meta:
        model = Burger_Boss
        fields = ['CI','nombre', 'apellido', 'ubicacion','inicial_del_numero_de_telefono', 'telefono','email']

class ExtraForm(forms.ModelForm):
    class Meta:
        model = Extra
        fields = ['nombre', 'descripcion', 'costo', 'categoria']

class IngredienteForm(forms.ModelForm):
    class Meta:
        model = Ingrediente
        fields = ['nombre', 'descripcion', 'costo']

class HamburguesaForm(forms.ModelForm):
    class Meta:
        model = Hamburguesa
        fields = ['pan','carne','queso','ingrediente']