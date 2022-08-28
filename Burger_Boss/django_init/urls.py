"""django_init URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
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
    from aplicaciones.Burger_Boss.class_view import ProductList
    from Aplicaciones.cplus.class_view import PeliculaList, PeliculaCreate, PeliculaUptate, PeliculaDelete, PeliculaList2,FuncionList, ProductoList, MostrarProductoList,ProductoCreate,ProductoList2,ProductoUptate,ProductoDelete,FuncionCreate,FuncionesList,FuncionList2,FuncionUptate,EliminarFuncion,ComprarEntrada,ProductoVIPList,MostrarProductoVIPList,ProductovipCreate,ProductovipList2,ProductovipUptate,ProductovipDelete,RegistrarCliente,SucursalList,SurcursalCreate,SucursalList2,SucursalUptate,SucursalDelete
from Aplicaciones.cplus.views import MostrarProductoList2,FindUser,Consulta,ConsultaVIP
   path('', PeliculaList.as_view(), name= 'index2'),
   path('crear_pelicula/',PeliculaCreate.as_view(),name = 'crear_pelicula'),
    path('modificar_o_eliminar_pelicula/',PeliculaList2.as_view(), name= 'modificar_o_eliminar_pelicula'),
    path('modificar_pelicula/<int:pk>',PeliculaUptate.as_view(), name= 'modificar_pelicula'),
    path('eliminar_pelicula/<int:pk>',PeliculaDelete.as_view(), name= 'eliminar_pelicula'),
    path('funciones/<int:pk>', FuncionList.as_view(), name= 'funciones'),
    path('carameleria/<int:pk>', MostrarProductoList.as_view(), name='carameleria'),
    path('funciones/productos/crear_producto', ProductoCreate.as_view(), name='crear_producto'),
    path('funciones/productos/modificar_o_eliminar_producto/', ProductoList2.as_view(), name='modificar_o_eliminar_producto'),
    path('funciones/productos/modificar_o_eliminar_producto/<int:pk>', ProductoUptate.as_view(), name='modificar_producto'),
    path('eliminar_producto/<int:pk>',ProductoDelete.as_view(), name= 'eliminar_producto'),
    path('funcionesf/',FuncionList.as_view(), name= 'funcionesf'), #funcionesf son las funciones verdaderas
    path('crear_funcion/', FuncionCreate.as_view(), name='crear_funcion'),
    path('modificar_o_eliminar_funcion/',FuncionList2.as_view(),name='modificar_o_eliminar_funcion'),
    path('modificar_funcion/<int:pk>',FuncionUptate.as_view(),name='modificar_funcion'),
    path('eliminar_funcion/<int:pk>',EliminarFuncion.as_view(),name='eliminar_funcion'),
    path('entrada/<int:pk>', ComprarEntrada.as_view(), name='entrada'),
    path('entrada/FindUser', FindUser, name='entrada'),
    path('productos_VIP/', ProductoVIPList.as_view(), name= 'productos_VIP'),
    path('carameleria_VIP/<int:pk>', MostrarProductoVIPList.as_view(), name= 'carameleria_VIP'),
    path('productos_VIP/crear_productovip', ProductovipCreate.as_view(), name= 'crear_productovip'),
    path('modificar_o_eliminar_productovip/', ProductovipList2.as_view(), name='modificar_o_eliminar_productovip'),
    path('modificar_productovip/<int:pk>', ProductovipUptate.as_view(), name='modificar_productovip'),
    path('eliminar_productovip/<int:pk>', ProductovipDelete.as_view(), name='eliminar_productovip'),
    path('registrarse/', RegistrarCliente.as_view(), name='registrarse'),
    path('consulta/',Consulta, name='consulta'),
    path('consulta/',ConsultaVIP, name='consultaVIP'),
    path('sucursales/', SucursalList.as_view(), name= 'sucursales'),
    path('crear_sucursal/', SurcursalCreate.as_view(), name='crear_sucursal'),
    path('modificar_o_eliminar_sucursal/', SucursalList2.as_view(), name='modificar_o_eliminar_sucursal'),
    path('modificar_sucursal/<int:pk>', SucursalUptate.as_view(), name='modificar_sucursal'),
    path('eliminar_sucursal/<int:pk>', SucursalDelete.as_view(), name='eliminar_sucursal'),
"""
from django.contrib import admin
from django.urls import path
from Aplicaciones.Burger_Boss.views import producto_y_extra_view,agregar_hamburguesa,AgregarExtra,ListarPedido,funcion_cero,pagos,ListarPedidoConPago,producto_y_extra_view_admin
from Aplicaciones.Burger_Boss.class_view import ProductoList,PedidoList,PedidoCreate,HomePage,ProductoListCambiarEstado,OtroEstado,ProductoCreate,ExtraCreate,IngredienteCreate,BurgerBossCreate,HamburguesaCreate,Ubicanos,ModificarProductoCarne,ModificarProductoQueso,ModificarIngrediente,ModificarExtra,EliminarCarne,EliminarQueso,EliminarIngrediente,EliminarExtra



urlpatterns = [
    path('admin/', admin.site.urls),
   # path('', HomePage.as_view(), name= 'index3'),
    path('', HomePage.as_view(), name= 'homepage3'),
   # path('pagos/', funcion_cero, name= 'pagos'),
    path('http://127.0.0.1:8000/ubicanos.html', Ubicanos.as_view(), name='ubicanos'),
    path('', ProductoList.as_view(), name= 'pedido'),
    path('productos/',producto_y_extra_view, name= 'productos'),
    path('productos/crear_pedido/', PedidoCreate.as_view(), name='crear_pedido'),
    path('crear_pedido/pedido_completado/', PedidoList.as_view(), name='pedido_completado'),
    path('productos/crear_pedido/index3', HomePage.as_view(), name='HomePage'),
    path('cambiar_estado/', ProductoListCambiarEstado.as_view(), name='cambiar_estado'),
    path('otro_estado/<int:pk>', OtroEstado.as_view(), name='otro_estado'),
    path('cambiar_producto/', ProductoCreate.as_view(), name='crear_producto'),
    path('crear_extra/', ExtraCreate.as_view(), name='crear_extra'),
    path('crear_ingrediente/', IngredienteCreate.as_view(), name='crear_ingrediente'),
    path('registro/', BurgerBossCreate.as_view(), name='registro'),
    path('crear_hamburguesa/', HamburguesaCreate.as_view(), name='crear_hamburguesa'),
    path('crear_hamburguesa2/', agregar_hamburguesa, name='crear_hamburguesa2'),
  #  path('ver_hamburguesa/', VerHamburguesas, name='ver_hamburguesa'),
    path('extra/',AgregarExtra, name='extra'),
    path('pedido2_completado/',ListarPedido, name='pedido2_completado'),
    path('http://127.0.0.1:8000/pagos.html',funcion_cero,name='pedido_completado_mensaje_exitoso'),
    path('pagos/',pagos,name='pagos'),
    path('pedido2_completado_con_pago/', ListarPedidoConPago, name='pedido2_completado_con_pago'),
    path('modificar_producto_carne/<int:pk>', ModificarProductoCarne.as_view(), name='modificar_producto_carne'),
    path('modificar_producto_queso/<int:pk>', ModificarProductoQueso.as_view(), name='modificar_producto_queso'),
    path('modificar_ingrediente/<int:pk>', ModificarIngrediente.as_view(), name='modificar_ingrediente'),
    path('modificar_extra/<int:pk>', ModificarExtra.as_view(), name='modificar_extra'),
    path('eliminar_carne/<int:pk>', EliminarCarne.as_view(), name='eliminar_carne'),
    path('eliminar_queso/<int:pk>', EliminarQueso.as_view(), name='eliminar_queso'),
    path('eliminar_ingrediente/<int:pk>', EliminarIngrediente.as_view(), name='eliminar_ingrediente'),
    path('eliminar_extra/<int:pk>', EliminarExtra.as_view(), name='eliminar_extra'),
    path('pedido_admin/', producto_y_extra_view_admin, name='pedido_admin'),
]

