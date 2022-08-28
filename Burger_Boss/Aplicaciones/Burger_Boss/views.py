from django.shortcuts import render
from .models import Producto, Extra, Ingrediente,Hamburguesa,Pedido2

def funcion_cero(request):
        return request
def pagos(request):
        return render(
                request,
                "pagos.html")
def producto_y_extra_view(request):
        carnes = Producto.objects.filter(categoria='carne')
        quesos = Producto.objects.filter(categoria='queso')
        ingredientes = Ingrediente.objects.all()
        extras = Extra.objects.all()
        return render(request,'pedido.html',{"Carnes":carnes,"Quesos":quesos,"Extra":extras,"Ingrediente":ingredientes})

def producto_y_extra_view_admin(request):
        carnes = Producto.objects.filter(categoria='carne')
        quesos = Producto.objects.filter(categoria='queso')
        ingredientes = Ingrediente.objects.all()
        extras = Extra.objects.all()
        return render(request,'pedido_admin.html',{"Carnes":carnes,"Quesos":quesos,"Extra":extras,"Ingrediente":ingredientes})

def ListarPedido(request):
        hamburguesa = Hamburguesa.objects.all()
        pedidos2 = Pedido2.objects.all()
        return render(request,'pedido2_completado.html',{"Hamburguesas":hamburguesa,"Pedido2":pedidos2})
def ListarPedidoConPago(request):
        hamburguesa = Hamburguesa.objects.all()
        pedidos2 = Pedido2.objects.all()
        return render(request,'pedido2_completado_con_pago.html',{"Hamburguesas":hamburguesa,"Pedido2":pedidos2})
def Hamburguesa_view(request):
        hamburguesa = Producto.objects.all()
        return render(request,'pedido.html',{"Hamburguesa":hamburguesa})


def agregar_hamburguesa(request):
        if request.method == "POST":
                pan = request.POST.get("pan")
                carne = request.POST.get("carne")
                queso = request.POST.get("queso")
                ingrediente = request.POST.get("ingrediente")
             #   producto = request.POST.get("Producto")
                Hamburguesa.objects.create(
                        pan = pan,
                      ingrediente= ingrediente,
                        carne = carne,
                        queso= queso,

                )
                return render(
                        request,
                        "crear_hamburguesa2.html",
                        {
                                "msg": "Hamburguesa agregada. Presione otra hamburguesa  para hacer otra hamburguesa y Continuar con el pedido para pasar a la siguiente fase"

                        }
                )

        else:
                return render(
                        request,
                        "crear_hamburguesa2.html",
                        {
                                "productosCarne":Producto.objects.filter(categoria='carne'),
                                "productosQueso": Producto.objects.filter(categoria='queso'),
                                "ingrediente": Ingrediente.objects.all(),

                        }
                )
def AgregarExtra(request):
        if request.method == "POST":
                bebida = request.POST.get("bebida")
                guarnicion = request.POST.get("guarnicion")
                postre = request.POST.get("postre")

                Pedido2.objects.create(
                        bebida=bebida,
                       guarnicion=guarnicion,
                        postre=postre,
                )
                return render(request,'pedido_completado_mensaje_exitoso.html',{"Codigo":Hamburguesa})
                      
                  
                

        else:
                return render(
                        request,
                        "extra.html",
                        {
                                "bebida":Extra.objects.filter(categoria='bebida'),
                                "guarnicion": Extra.objects.filter(categoria='guarnicion'),
                                "postre": Extra.objects.filter(categoria='postre')

                        }
                )


def agregar_Ingrediente(request):
        if request.method == "POST":
                pass
        else:
                return render(
                        request,
                        "crear_pedido.html"
                )