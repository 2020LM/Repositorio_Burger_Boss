from django.shortcuts import render,redirect
from .forms import ProductoForm,PedidoForm,Burger_BossForm,ExtraForm,IngredienteForm,HamburguesaForm
from django.views.generic import CreateView,DeleteView,ListView,UpdateView,DetailView
from .models import Producto,Pedido,Burger_Boss,Extra,Ingrediente,Hamburguesa
from django.urls import reverse_lazy
#Crea clases
class HomePage(ListView):
    model = Producto
    template_name = 'homepage3.html'


class Ubicanos(ListView):
    model = Producto
    template_name = 'ubicanos.html'
class Pagos(ListView):
    model = Producto
    template_name = 'pagos.html'
class ProductoList(ListView):
    model = Producto
    template_name = 'pedido.html'

    def get_context_data(self, **kwargs):
        context= super().get_context_data()
        context['extra_list'] = Extra.objects.all()
        return context


class PedidoCreate(CreateView):
    model = Pedido
    form_class = PedidoForm
    template_name = 'crear_pedido.html'
    success_url = reverse_lazy('pedido_completado')

class PedidoList(ListView):
    model = Pedido
    template_name = 'pedido_completado.html'

class ProductoListCambiarEstado(ListView):
    model = Pedido
    template_name = 'cambiar_estado.html'


class OtroEstado(UpdateView):
    model = Pedido
    form_class = PedidoForm
    template_name = 'otro_estado.html'
    success_url = reverse_lazy('cambiar_estado')

class ProductoCreate(CreateView):
    model = Producto
    form_class = ProductoForm
    template_name = 'crear_producto.html'
    success_url = reverse_lazy('pedido_admin')

class ExtraCreate(CreateView):
    model = Extra
    form_class = ExtraForm
    template_name = 'crear_extra.html'
    success_url = reverse_lazy('pedido_admin')

class IngredienteCreate(CreateView):
    model = Ingrediente
    form_class = IngredienteForm
    template_name = 'crear_ingrediente.html'
    success_url = reverse_lazy('pedido_admin')

class BurgerBossCreate(CreateView):
    model = Burger_Boss
    form_class = Burger_BossForm
    template_name = 'registro.html'
    success_url = reverse_lazy('crear_hamburguesa2')

class HamburguesaCreate(CreateView):
    model = Hamburguesa
    form_class = HamburguesaForm
    template_name = 'crear_hamburguesa.html'
    success_url = reverse_lazy('extra')

#class VerHamburguesas2(ListView):
 #   model = Hamburguesa
  #  template_name = 'ver_hamburugesa.html'

class Pagos(ListView):
    model = Producto
    template_name = 'pagos.html'

class ModificarProductoCarne(UpdateView):
    model = Producto
    form_class = ProductoForm
    template_name = 'modificar_producto_carne.html'
    success_url = reverse_lazy('pedido_admin')


class ModificarProductoQueso(UpdateView):
    model = Producto
    form_class = ProductoForm
    template_name = 'modificar_producto_queso.html'
    success_url = reverse_lazy('pedido_admin')

class ModificarIngrediente(UpdateView):
    model = Ingrediente
    form_class = IngredienteForm
    template_name = 'modificar_ingrediente.html'
    success_url = reverse_lazy('pedido_admin')

class ModificarExtra(UpdateView):
    model = Extra
    form_class = ExtraForm
    template_name = 'modificar_extra.html'
    success_url = reverse_lazy('pedido_admin')

class EliminarCarne(DeleteView):
    model = Producto
    template_name = 'eliminar_carne.html'
    success_url = reverse_lazy('pedido_admin')

class EliminarQueso(DeleteView):
    model = Producto
    template_name = 'eliminar_queso.html'
    success_url = reverse_lazy('pedido_admin')

class EliminarIngrediente(DeleteView):
    model = Ingrediente
    template_name = 'eliminar_ingrediente.html'
    success_url = reverse_lazy('pedido_admin')

class EliminarExtra(DeleteView):
    model = Extra
    template_name = 'eliminar_extra.html'
    success_url = reverse_lazy('pedido_admin')