Algoritmo CalculadoraDeCostos 
	//Calcular el precio total aplicando el nombre del producto, cantidad, cupón de descuento del cliente, descuento por cantidad de productos, IVA y costo de envío.
	//Manejaremos un cupón de descuento del 10%, IVA del 13%, descuento por cantidad del 5%
	definir cantidad como entero 
	definir Producto como caracter 
	definir preciodescuento, subtotal, preciouni, cupondescuento, descuento, IVA, PrecioTotal como real
	
	Escribir "Escriba el nombre del producto"
	Leer Producto 
	Escribir "Escriba el precio del producto" 
	Leer preciouni 
	Escribir "¿Cuál es la cantidad?" 
	Leer cantidad 
	subtotal<-(preciouni*cantidad)
	Escribir "El Subtotal es MX ", subtotal 
	//Aplicar el cupón de descuento en caso de que el cliente tenga uno
	Escribir "¿Tiene cupón de descuento? (1: Sí / 0: No): "
	Leer cupondescuento
	Si cupondescuento = 1 entonces
		descuento <- (preciouni * cantidad)*0.10 // 10% de descuento
	Sino
		descuento <- 0
	FinSi
	
	//Aplicar el descuento por cantidad de producto, será del 5%
	Si cantidad>1 Entonces
		preciodescuento<- (preciouni* cantidad)*0.05  
	SiNo
		preciodescuento<- 0
	Fin Si
	
	//Calcular el IVA
	IVA <- ((preciouni * cantidad - descuento - preciodescuento) * 0.13)  // 13% de IVA

	//Calcular el costo de envío, el costo fijo será de $10+$5*2 kg
	definir pesototal, costofijo, costoPorKgExtra, grupos3kilos, costoEnvio Como Real
	Escribir "Ingrese el peso total del paquete en KG "
	Leer pesototal
	grupos3kilos <- pesototal / 2
	costofijo <- 10
	costoPorKgExtra <- 5 * grupos3Kilos
	costoEnvio <- costofijo + costoPorKgExtra
	
	//Calcular el precio total ya con descuentos, IVA y envío
	PrecioTotal <- (preciouni * cantidad) - descuento - preciodescuento + IVA + costoEnvio
	
	// Mostrar el precio total y la cantidad de los descuentos
	Escribir "Precio total MX ", PrecioTotal
	Escribir "Descuento por cupón MX ", descuento
	Escribir "Descuento por cantidad MX ", preciodescuento
	Escribir "IVA MX ", IVA
	Escribir "Costo del envío MX ", costoEnvio
	
FinAlgoritmo
