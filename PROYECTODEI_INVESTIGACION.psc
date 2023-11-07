//DETERMINAR CUANTO SE DEBE PAGAR POR CIERTA CANTIDAD DE COLAS, CONSIDRERANDO QUE SI SON
//MAS DE 23 COLAS, EL POR UNIDAD ES DER $0.50, CASO CONTRARIO EL PRECIO SERA 20% MAS.
//AL COSTO RESULTANTE CALCULAR EL 12% DEL IVA. SE PIDE PRESENTAR: CANTIDAD COMPRADA, COSTO POR UNIDAD
// EL TOTAL SIN EL IVA, EL IVA Y EL TOTAL A PAGAR.
Funcion ejercicio1(0)
	Escribir "Determinar cuanto se debe de pagar por cierta cantidad de cola"
	definir nColas, precioTotal, costoXuni, sinDesc, iva, precioTotalIva como real
	Mostrar "ingrese cantidad de colas que va a comprar"
	costoXuni=0.50
	sinDesc= 0.50*.2
	iva= 0.12
	Leer nColas
	si nColas>=23 Entonces
		costoXuni= 0.50
	sino
		costoXuni= costoXuni+sinDesc
	FinSi
	precioTotal= nColas*costoXuni
	iva= precioTotal*iva
	precioTotaliva = precioTotal+iva
	Mostrar "******comprobante de pago******"
	Mostrar ""
	mostrar "cantidad de colas: ", nColas, " unidades = $" costoXuni
	Mostrar "precio total sin iva:   $", precioTotal
	Mostrar "+ iva(+12%):   $",iva
	Mostrar "total a pagar: $", precioTotaliva
	Esperar Tecla	
FinFuncion

Funcion ejercicio2(0)
	//La asociación de vinicultores tiene como política fijar un precio inicial al kilo
	//de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
	//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
	//requiere determinar cuánto recibirá un productor por la uva que entrega en un
	//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
	//inicial cuando es de tamaño 1; y 30 si es de tamaño 2. Si es de tipo B, se rebajan
	//30 cuando es de tamaño 1, y 50 cuando es de tamaño 2.
	//Realice un algoritmo para determinar la ganancia obtenida	
	Escribir "*****fijar el precio inicial al kilo de uva**** "
	definir  pFijo,tipoUva, precioTotal Como Real
	Mostrar "ingrese precio por kilo"
	leer pFijo
	Mostrar  "ingrese tipo de Uva"
	Mostrar "1) tipo A tamaño 1"
	Mostrar "2) tipo A taño 2"
	Mostrar "3) tipo B tamaño 1"
	Mostrar "4) tipo B tamaño 2"
	leer tipoUva
	precioTotal= 0
	definir suma, kilos Como real
	Mostrar "ingrese cantidad en kilos"
	leer kilos
	segun tipoUva Hacer
		1:
			suma= pFijo * kilos
			precioTotal = suma + 20
			Mostrar "su ganacia es de: $", precioTotal
		2:
			suma= pFijo * kilos
			precioTotal = suma + 30
			Mostrar "su ganacia es de: $", precioTotal
		3:
			suma= pFijo * kilos
			precioTotal = suma - 30
			Mostrar "su ganacia es de: $", precioTotal
		4:
			suma= pFijo * kilos
			precioTotal = suma - 50
			Mostrar "su ganacia es de: $", precioTotal
	FinSegun
	Esperar Tecla	
FinFuncion

Funcion ejercicio3(0)
	//Dado dos números obtener el residuo sin el operador mod, %
	Escribir "*******obtener el residuo sin el operador mod***"
	Definir n1,n2,n3 Como Entero
	n1=0 ; n2=0; n3=0
	escribir "n1"
	leer n1
	Escribir "n2"
	leer n2
	n3=n1-n2*trunc(n1/n2)
	Escribir "el resultado es " , n3
	Esperar Tecla	
FinFuncion

Funcion ejercicio4(0)
	//El consultorio del Dr. Paez tiene como política cobrar la consulta con
	//base en el número de cita, de la siguiente forma:
	//Las tres primeras citas a $200.00 c/u.
	//Las siguientes dos citas a $150.00 c/u.
	//Las tres siguientes citas a $100.00 c/u.
	//Las restantes a $50.00 c/u, mientras dure el tratamiento.
	//Se requiere un algoritmo para determinar:
	//Cuánto pagará el paciente por la cita.
	//El monto de lo que ha pagado el paciente por el tratamiento.
	//Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
	//cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el
//	tratamiento.	
	definir cita,i,precio Como Entero
	Escribir " Bienvenidos al consultorio del Dr.Paez"
	escribir "ingrese el numero de citas que durara el tratamiento"
	leer cita
	precio=0
	Para i<-1 Hasta cita Con Paso 1 Hacer
		si i>=1 y i<=3 Entonces
			precio=precio+200
			Escribir "numero de cita: ", i, " valor: ", precio
		FinSi
		si i>=4 y i<=7 Entonces
			precio=precio+150
			Escribir "numero de cita: ", i, " valor: ", precio
	    FinSi
		si i>=7 y i<=9 Entonces
			precio=precio+100
			Escribir "numero de cita: ", i, " valor: ", precio
		FinSi
		si i>=10 Entonces
			precio=precio+50
			Escribir "numero de cita: ", i, " valor: ", precio
		FinSi
	FinPara
	Esperar Tecla	
FinFuncion

Funcion ejercicio5(0)
	//Escribir un algoritmo que lea cuatro números y determine si el numero 1
	//es la mitad del número 2; Y si el numero 3 es divisor del numero4.
	definir num1,num2,num3,num4 Como Entero
	Escribir "ingrese cuatro (4) numeros"
	leer num1,num2,num3,num4
	si (num1=num2/2) y (num4 mod num3=0) Entonces
		
		Escribir "el numero 1 es la mitad del numero 2 y el numero 3 es divisor del numero 4"
	sino 
		escribir "el numero 1 no es la mitad del numero 2 o el numero 3 no es divisor del numero 4"
	FinSi
	Esperar Tecla	
FinFuncion

Funcion ejercicio6(0)
	//El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
	//de sus clientes, para esto considera que:
	//Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
	//Si tiene tipo 2 el aumento será del 35%
	//Si tiene tipo 3, el aumento será del 40%
	//Para cualquier otro tipo será del 50%
//	Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite
//	de crédito que tendrá una persona en su tarjeta considerando que después
	//del aumento de porcentaje se tendrá que subir $20 adicionales a todas las tarjetas
	definir limite, tipoTarjeta, nuLim como Real
	Mostrar  "ingrese tipo de tarjeta"
	Mostrar "1) tipo 1"
	Mostrar "2) tipo 2"
	Mostrar "3) tipo 3"
	Mostrar "4) tipo 4"
	leer tipoTarjeta
	limite= 0
	nuLim=0
	definir  cantidad Como real
	Mostrar "ingrese cantidad del credito actual"
	leer cantidad
	segun tipoTarjeta Hacer
		1:
		    nuLim= cantidad*.25
			limite= cantidad + nuLim
			limite = limite+20
			Mostrar "se actualizo su limite de credito en su trajeta tipo," tipoTarjeta " aumento un 25%, su saldo total es de: $", limite
		2:
			nuLim= cantidad*.35
			limite= cantidad + nuLim
			limite = limite+20
			Mostrar "se actualizo su limite de credito en su targeta tipo," tipoTarjeta " aumento un 35%, su saldo total es de: $", limite
		3:
			nuLim= cantidad*.40
			limite= cantidad + nuLim
			limite = limite+20
			Mostrar "se actualizo su limite de credito, en su targeta tipo," tipoTarjeta "aumento un 40%, su saldo total es de: $", limite
		4:
			nuLim= cantidad*.50
			limite= cantidad + nuLim
			limite = limite+20
			Mostrar "se actualizo su limite de credito, en su targeta tipo," tipoTarjeta " aumento un 50%, su saldo total es de: $", limite
	FinSegun
	Esperar Tecla	
FinFuncion

Funcion ejercicio7(0)
	//Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del
	//numero3 Y si el numero 2 es el doble del numero4.	
	definir N1,N2,N3,N4 Como Entero
	Escribir "ingresar cuatros numeros"
	leer N1,N2,N3,N4
	SI N3 mod N1=0 Entonces
		Escribir " N1 si es divisor de N3"
	SiNo
		Escribir "N1 no es divisor de N3"
	FinSi
	si N2=2*N4 Entonces
		Escribir "N2 es el doble de N4"
	sino 
		Escribir "N2 no es el doble de N4"
	FinSi
	Esperar Tecla	
FinFuncion

funcion ejercicio8(0)
	//El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito
	//de sus clientes, para esto considera que:
	//Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
	//Si tiene tipo 2 el aumento será del $200
	//Si tiene tipo 3, el aumento será del $300
	//Para cualquier otro tipo será del 500
//	Realizar un algoritmo que ayude al banco a determinar el nuevo límite
//	de crédito que tendrá una persona en su tarjeta considerando que
	//después del aumento se tendrá que subir 10% adicionales a todas las tarjetas
	definir limite, tipoTarjeta, nuLim como Real
	Mostrar  "ingrese tipo de tarjeta"
	Mostrar "1) tipo 1"
	Mostrar "2) tipo 2"
	Mostrar "3) tipo 3"
	Mostrar "4) tipo 4"
	leer tipoTarjeta
	limite= 0
	nuLim=0
	definir  cantidad Como real
	Mostrar "ingrese cantidad del credito actual"
	leer cantidad
	segun tipoTarjeta Hacer
		1:
		    nuLim= cantidad*.10
			limite= cantidad + nuLim
			limite = limite+100
			Mostrar "se actualizo su limite de credito en su trajeta tipo " tipoTarjeta " aumento en $100, su saldo total +10% es de: $", limite
		2:
			nuLim= cantidad*.10
			limite= cantidad + nuLim
			limite = limite+200
			Mostrar "se actualizo su limite de credito en su targeta tipo " tipoTarjeta " aumento en $200, su saldo total +10% es de: $", limite
		3:
			nuLim= cantidad*.10
			limite= cantidad + nuLim
			limite = limite+300
			Mostrar "se actualizo su limite de credito, en su targeta tipo " tipoTarjeta "aumento en $300, su saldo total +10% es de: $", limite
		4:
			nuLim= cantidad*.10
			limite= cantidad + nuLim
			limite = limite+500
			Mostrar "se actualizo su limite de credito, en su targeta tipo " tipoTarjeta " aumento en $500, su saldo total+10$ es de: $", limite
	FinSegun
	Esperar Tecla	
FinFuncion

funcion ejercicio9(0)
	//Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es
	//positivo par o impar múltiplo de 7.	
	Definir numer Como Real
    Escribir "Ingrese un número:"
    Leer numer
    Si numer < -20 Entonces
        Escribir "El número es negativo y menor que -20."
    Sino Si numer > 0 Entonces
			Si numer % 2 = 0 Entonces
				Escribir "El número es positivo y par."
			Sino Si numer % 7 = 0 Entonces
					Escribir "El número es positivo, impar y múltiplo de 7."
				Sino Si numer % 7 <> 0 Entonces
						Escribir "El número es positivo e impar, pero no es múltiplo de 7."
					Sino
						Escribir "El número es cero o negativo mayor que -20."
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Esperar Tecla	
FinFuncion
Funcion ejercicio10(0)
	//La asociación de vinicultores tiene como política fijar un precio inicial al quintal de
	//pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2.
	//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere
	//determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque,
	//considerando lo siguiente:
	// Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
	//si es de tamaño 2
	//Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño
	//2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
	//Realice un algoritmo para determinar el precio de embarque
	definir  p1,Cpitaha, precioTotal Como Real
	Escribir  "ingrese precio inicial por quintal"
	leer p1
	Escribir  "ingrese tipo de pitahaya"
	Escribir  "1)  amarilla, tipo 1"
	escribir "2)  amarilla, tipo 2"
	escribir  "3)  colorada, tipo 1"
	escribir "4)  colorada, tipo 2"
	leer Cpitaha
	precioTotal= 0
	definir suma, quintal, desc5, iva, precioTotal1 Como real
	escribir "ingrese cantidad de quintales"
	leer quintal
	segun Cpitaha Hacer
		1:
			
			p1= p1+10
			suma= p1 * quintal
			precioTotal = suma
			desc5 = precioTotal*.05
			precioTotal1 = precioTotal-desc5
			mostrar "total" precioTotal
			Mostrar "$", precioTotal1, " menos el descuento del 5%: $", desc5
			iva= precioTotal1*.12
			Mostrar "12% iva: $", iva
			
			precioTotal1=precioTotal1+iva
			
			Mostrar "el precio de embarque es de: $", precioTotal1
		2:
			
			p1= p1 + p1*.15
			p1= p1+5
			suma= p1 * quintal 
			precioTotal = suma 
			desc5 = precioTotal*.05
			precioTotal1 = precioTotal-desc5
			mostrar "total" precioTotal
			Mostrar "$", precioTotal1, " menos el descuento del 5%: $", desc5
			iva= precioTotal1*.12
			Mostrar "12% iva: $", iva
			
			precioTotal1=precioTotal1+iva
			
			Mostrar "el precio de embarque es de: $", precioTotal1
			
		3:
			p1= p1-20
			suma= p1 * quintal
			precioTotal = suma 
			Mostrar "el precio de embarque  es de: $", precioTotal
		4:
			
			p1= p1-p1*.20
			suma= p1 * quintal
			precioTotal = suma - 20
			desc5 = precioTotal*.05
			precioTotal1 = precioTotal-desc5
			mostrar " total ", precioTotal
			Mostrar " $ ", precioTotal1, " menos el descuento del 5%: $", desc5
			iva= precioTotal1*.12
			Mostrar "12% iva: $", iva
			
			precioTotal1=precioTotal1+iva
			
			Mostrar "su precio de embarque es de: $ ", precioTotal1
	FinSegun
	Esperar Tecla	
FinFuncion

//11) Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e 
//	impar o negativo divisible para 5.
funcion ejercicios11(0)
	definir num como entero
    Escribir "Ingrese un número:"
    Leer num
	
    Si num < 10 y num % 2 = 0 Entonces
        Escribir "El número es par y menor que 10."
    Sino Si num < 0 y num % 2 <> 0 y num % 5 = 0 Entonces
			Escribir "El número es negativo, impar y divisible por 5."
		Sino Si num < 0 y num % 2 <> 0 Entonces
				Escribir "El número es negativo e impar."
			Sino
				Escribir "El número no cumple ninguna de las condiciones."
			FinSi
		FinSi
	FinSi
	Esperar Tecla	
FinFuncion

funcion ejercicio12(0)
	//) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un 
	//algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente:
	//Costo de producción = materia prima + mano de obra + gastos de fabricación.
	//Precio de venta = costo de producción + 45 % de costo de producción.
	//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o 
	//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y 
	//para los que tienen clave 2 o 6, 85 %.
	//Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene 
	//claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o 
	//6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo 
	//costo para cualquier clave.
	//ent: materia_prima, mano_obra, gasto_fabricacion, costo_produccion, precio_venta Como Real
	
	//pro:si clave >= 1 y clave <= 6( escribir "ingrese el costo de la materia prima") sino (si clave == 1 o clave== 5 Entonces
	//mano_obra = materia_prima)
	//si clave == 2 o clave== 5 Entonces(gasto_fabricacion= materia_prima * .30)
	//sino si clave == 3 o clave== 6 Entonces (gasto_fabricacion=materia_prima* .35) 
    //sino gasto_fabricacion = materia_prima *.28
	
	//sal:gasto de mano de obra  , gasto produccion , gasto  de fabricacion , precio de venta 
	definir materia_prima, mano_obra, gasto_fabricacion, costo_produccion, precio_venta Como Real
	definir clave Como Entero
	escribir "ingrese la clave del ariculo" ;
	leer clave ;
	si clave >= 1 y clave <= 6 Entonces
	    escribir "ingrese el costo de la materia prima"	
		leer materia_prima
	    si clave == 3 o clave == 4 Entonces
			mano_obra= materia_prima * .75
		SiNo
			si clave == 1 o clave== 5 Entonces
				mano_obra = materia_prima
			sino 
				mano_obra = materia_prima * .85
				
			FinSi
		finsi 	
		
		si clave == 2 o clave== 5 Entonces
			gasto_fabricacion= materia_prima * .30
		sino 
			si clave == 3 o clave== 6 Entonces
				gasto_fabricacion=materia_prima* .35 
			sino 
				gasto_fabricacion = materia_prima *.28
			FinSi
		FinSi
		costo_produccion = materia_prima + mano_obra + gasto_fabricacion
		precio_venta = costo_produccion + (costo_produccion * .45)
		escribir "el gasto de mano de obra para el articulo con clave ",clave," es, $",mano_obra;
		escribir "el gasto de fabricacion para el articulo con clave ",clave," es, $",gasto_fabricacion;
		escribir "el costo de produccion para el articulo con clave ",clave," es, $",costo_produccion
		escribir "el precio de venta para el articulo con clave ",clave," es, $",precio_venta
	SiNo
		escribir "ingresa una clave correcta" 
	FinSi
	Esperar Tecla	
FinFuncion

funcion ejercicio13(0)
	// Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número.
	//ent. numero entero , c 
	
	//pro: mientras n <> 0 Hacer n <- trunc(n / 10) _ (c <- c + 1 )
	
	//sal: cantidad de digitos 
	definir n , c Como Entero
	escribir "ingrese un numero entero , (ejemplo:1,2,3,4...)"
	leer n ;
	
	c <- 0 
	mientras n <> 0 Hacer
		n <- trunc(n / 10)
		c <- c + 1 ;
		escribir "Despues de la interaccion ",c," el numero quedo en ",n;
		
	FinMientras
	Escribir "el numero tiene ",c," digitos";	
	Esperar Tecla		
FinFuncion

Funcion ejercicio14(0)
	//Dado un número, determine si es capicúa
	//ent: num , aux , num_inv Como Entero
	//pro: aux<- num  ; num_inv<-0 ; mientras aux>0 num_inv<- num_inv + aux mod 10 ;num_inv<- num_inv * 10
	//aux<- trunc(aux/10) ; num_inv<-num_inv/10 si num = num_inv entonces es capicua caso contrario NO
	//sal: determinar que el numero ingresado es caapicua o no 
	Definir num , aux , num_inv Como Entero
	Escribir "ingrese un numero"
	leer num 
	aux<- num 
	num_inv<-0 
	mientras aux>0
		num_inv<- num_inv + aux mod 10
		num_inv<- num_inv * 10
		aux<- trunc(aux/10)
		
	FinMientras
	num_inv<-num_inv/10
	si num = num_inv Entonces
		escribir "el numero que ingreso es capicua"
	SiNo
		escribir "el numero no es capicua "
	FinSi
FinFuncion

funcion ejercicio15(0)
	// Escribir un algoritmo que presente los divisores de un numero
	//ent: numero , x 
	//pro: x=1 ; mientras x <= n Hacer ;si n mod x == 0 Entonces (escribir"el numero ",x, " es divisible entre " ,n)
	//x=x+1}
	//sal: numeros divisibles para "n"
	definir n , x Como Entero
	escribir "ingresa un numero"
	leer n 
	x = 1
	mientras x <= n Hacer
		si n mod x == 0 Entonces
			escribir"el numero ",x, " es divisible entre " ,n
		FinSi
		x = x + 1	
	FinMientras	
	Esperar Tecla	
FinFuncion

funcion ejercicio16(0)
	//Escribir un algoritmo que presente la suma de los divisores de un numero
	//ent: numero , x ,suma1 
	//pro: x=1 ; suma1=0 
	//mientras x <= n Hacer si n mod x == 0 Entonces (escribir"el numero ",x, " es divisible entre " ,n)
	//suma1= suma1 + x (escribir "la suma de los divisores son: ",suma1)
	//sal: numeros divisibles ; suma de los divisores 
	definir n , x ,suma1 Como Entero
	escribir "ingresa un numero"
	leer n 
	x = 1
	suma1=0
	mientras x <= n Hacer
		si n mod x == 0 Entonces
			escribir"el numero ",x, " es divisible entre " ,n
			suma1= suma1 + x
		FinSi
		x = x + 1	
	FinMientras
	escribir "la suma de los divisores son: ",suma1;	
	Esperar Tecla	
FinFuncion

//Escribir un algoritmo que presente la cantidad de los divisores de un numero
//ent:  n, c, i Como Entero; c <-0 
//pro: Para i <- 1 Hasta n Hacer Si n MOD i = 0 Entonces (c <- c + 1)
//sal: presentar la cantidad de divisores del numero 
Funcion  ejercicio17(0)
    Definir n, c, i Como Entero
    Escribir "Ingrese un número:"
    Leer n
    c <- 0
    Para i <- 1 Hasta n Hacer
        Si n MOD i = 0 Entonces
            c <- c + 1
        FinSi
    FinPara
    Escribir "El número ", n, " tiene ", c, " divisores."
	Esperar Tecla	
FinFuncion

funcion ejercicio18(0)
	//) Escribir un algoritmo que indique si un número es perfecto
	//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y
	//excluido el propio número es igual al numero
	//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
	//ent: numero , x , perfecto 
	//pro: x=2 ; 	mientras x <= n Hacer si n mod x == 0 Entonces (perfecto = perfecto + (n/x)) _ x=x+1 
	//si perfecto == n Entonces "n" es perfecto sino no es perfecto 
	//sal: escribir si el numero es perfecto o no 
	
	definir n, x, perfecto Como Real
	Escribir "Ingrese un numero"
	leer n 
	x = 2
	perfecto=0
	mientras x <= n Hacer
		si n mod x == 0 Entonces
			perfecto = perfecto + (n/x) 
		FinSi
		x = x+1
	FinMientras
	si perfecto == n Entonces
		escribir "el numero ",n," es un numero perfecto"
	sino 
		escribir "el numero ",n," no es un numero perfecto"
	FinSi	
	Esperar Tecla	
FinFuncion

funcion ejercicio19(0)
	// Dado un número N determinar si es un número primo.
	//Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
	//ent: numero para verificar si es primo 
	//pro: (cont <- 0) ; para i <- 1 Hasta num Con Paso 1 Hacer si num mod i = 0 Entonces (cont = cont + 1) 
	//si cont = 2 entonces si es un numero primo , caso contrario no;
	//sal: escribir si es numero priomo o no ; 
	definir cont, num,i como entero
	cont <- 0
	escribir "ingrese un numero entero"
	leer num
	para i <- 1 Hasta num Con Paso 1 Hacer
		si num mod i = 0 Entonces
			cont = cont + 1 
			
		FinSi
	FinPara
	si cont = 2 entonces 
		escribir num, " si es un numero primo"
	sino 
		escribir num, " no es un numero primo"
	FinSi
	Esperar Tecla	
FinFuncion


Funcion ejercicio20(0)
	//Dado dos números determinar si son primos gemelos.
	//ent:  x , n ,n2,  contador Como Entero; x=  1 ;contador = 0 
	//pro: mientras x <= n Hacer si n mod x == 0 Entonces contador = contador+1 FinSi
	//x=x+1
    // sal: indicar si los numeros son primos gemelos 
	definir x , n ,n2,  contador Como Entero
	escribir "ingrese un numero entero"
	leer n
	escribir "ingresa un segundo numero"
	leer n2 
	x=  1
	contador = 0 
	mientras x <= n Hacer
		si n mod x == 0 Entonces
			contador = contador+1
		FinSi
		x=x+1
	FinMientras
	
	si n2 = n+2 Entonces
		escribir "son primos gemelos"
	sino 
		escribir "no son primos gemelos"
	FinSi
	Esperar Tecla	
FinFuncion


Funcion ejercicio21(0)
	//Dado dos números determinar si son primos amigos.
    //Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la 
	//suma de los divisores del numero2. Ejemplo: 6(1+2+3=6) y 25(1+5=6)
    //ent:  a,b,sumas1,suma2,i,j Como Entero
	//pro:i=1 ; sumas1=0 Mientras i < a Hacer si a mod i == 0 Entonces sumas1= sumas1 + i  (i = i + 1)
	//suma2 = 0 j = 1 mientras j < b hacer si b mod j = 0 Entonces suma2 = suma2 + j	(j = j + 1)
	//si sumas1 == b y suma2 == a entonces escribir "los numeros son amigos" sino "los numeros no son amigos" 
	//sal: determinar si los numeros dados son amigos o no 
	definir a,b,sumas1,suma2,i,j Como Entero
	escribir "ingresa dos (2) numeros"
	leer a,b
	i = 1
	sumas1 = 0
	Mientras i <= a Hacer
		si a mod i == 0 Entonces
			sumas1= sumas1 + i
		FinSi
		i = i + 1
	Fin Mientras
	
	suma2 = 0
	j = 1
	mientras j <= b hacer 
		si b mod j = 0 Entonces
			suma2 = suma2 + j
		FinSi
		j = j + 1
	FinMientras
	
	si sumas1 == suma2 entonces 
		escribir "los numeros son amigos"
	sino 
		escribir "los numeros no son amigos"
	FinSi
	Esperar Tecla	
FinFuncion

//arreglos y cadenas

funcion ejercicio01(n)
//	Dada n realizar un algoritmo que presente la siguiente secuencia
//	1) Dada n realizar un algoritmo que presente la siguiente secuencia
//		n=6
//		respuesta= 2 2 4 8 32 256
	//ent:  n, a,b,i,c Como Entero 
	//pro:  a <- 2 ; b <- 2 ;   Para i <- 3 Hasta n Con Paso 1 Hacer c <- a * b escribir c ; a<-b ; b<-c 
	//sal: presentar secuencia 
	Definir  a,b,i,c Como Entero
    
    a <- 2
    b <- 2
    Escribir a
    Escribir b
    Para i <- 3 Hasta n Con Paso 1 Hacer
        c <- a * b
        Escribir c
        a <- b
        b <- c
    FinPara
	Esperar Tecla	
FinFuncion

//2) Implementa un programa que calcule el promedio de los elementos pares e impares en un 
//arreglo de números enteros y los copie en otro arreglo.
//ent: Definir n, i, spa, sim, cpa, cim Como Entero ;Definir arreglo, apa, aim Como Entero
//Dimension  arreglo[100], apa[100], aim[100] ; cpa =0; cim=0;spa=0; sim=0
//pro: Para i = 1 Hasta n Con Paso 1 Hacer Escribir "Ingrese el elemento ", i, " del arreglo: " Leer arreglo[i]
//Si arreglo[i] % 2 = 0 Entonces ; cpa <- cpa + 1 ; apa[cpa] <- arreglo[i] sino  cim <- cim + 1 , aim[cim] <- arreglo[i]
// Para i = 1 Hasta cpa Con Paso 1 Hacer spa <- spa + apa[i] ; Para i = 1 Hasta cim Con Paso 1 Hacer sim <- sim + aim[i]
//sal: promedio de los pares e imparrs del arreglo

funcion  ejercicio02(0)
    Definir n, i, spa, sim, cpa, cim Como Entero
    Definir arreglo, apa, aim Como Entero
    Dimension  arreglo[100], apa[100], aim[100] 
	
	cpa =0; cim=0;spa=0; sim=0
	
    Escribir "Ingrese la cantidad de elementos del arreglo: "
    Leer n
	
    Para i = 1 Hasta n Con Paso 1 Hacer
		
		Escribir "Ingrese el elemento ", i, " del arreglo: "
		Leer arreglo[i]
		
        Si arreglo[i] % 2 = 0 Entonces
            cpa <- cpa + 1
            apa[cpa] <- arreglo[i]
        Sino
            cim <- cim + 1
            aim[cim] <- arreglo[i]
        FinSi
    FinPara
	
    Para i = 1 Hasta cpa Con Paso 1 Hacer
        spa <- spa + apa[i]
    FinPara
	
    Para i = 1 Hasta cim Con Paso 1 Hacer
        sim <- sim + aim[i]
    FinPara
	
    Escribir "El promedio de los elementos pares es: ", spa / cpa
    Escribir "El promedio de los elementos impares es: ", sim / cim
	Esperar Tecla	
FinFuncion

// ent: n ,i Como Entero ;  Dimension secuencia[100]  secuencia[1] <- 20 secuencia[2] <- 5
//pro :Para i <- 3 Hasta n-1 Con Paso 1 Hacer secuencia[i] <- secuencia[i - 1] - 5
//Para i <- 1 Hasta n Con Paso 1 Hacer Escribir secuencia[i]
//sal : Escribir secuencia[i]

Funcion ejercicio03(0)
    Definir n ,i Como Entero
    Escribir "Ingrese el valor de n:"
    Leer n
    Definir secuencia Como Entero
	Dimension secuencia[100] 
    secuencia[1] <- 20
    secuencia[2] <- 5
    Para i <- 3 Hasta n-1 Con Paso 1 Hacer
        secuencia[i] <- secuencia[i - 1] - 5
    FinPara
    secuencia[n] <- 0
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir secuencia[i]
    FinPara
FinFuncion



Funcion ejercicio04(0)
	//4) Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los 
	//números positivos y en el otro los negativos Ejemplo:
//	arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
	//ent: arrO,arrNe como entero ;  i,k,n como entero ; i=0;k=0 ;  Dimension arrNE[100] 
	//pro:  Para i<-0 Hasta n-1 Con Paso 1 Hacer Escribir "Ingresa el número ", i Leer arrO[i] ;  Para i<-0 Hasta n-1 Con Paso 1 Hacer
	//Si arrO[i] <= 0 Entonces k <- k + 1 arrNe[k] <- arrO[i] ; negativos (Para i<-1 Hasta k Con Paso 1 Hacer Escribir arrNe[i])
	//sal: presentar numeros positivos y negativos 
	Definir arrO,arrNe como entero
    Definir i,k,n como entero
    i=0;k=0
    
    Dimension arrNE[100]
    Escribir "Ingresa el número "
	leer n
	Dimension arrO[n]
	
    Para i<-0 Hasta n-1 Con Paso 1 Hacer
        Escribir "Ingresa el número ", i
        Leer arrO[i]
    FinPara
    
    Para i<-0 Hasta n-1 Con Paso 1 Hacer
        Si arrO[i] <= 0 Entonces
			
            k <- k + 1
            arrNe[k] <- arrO[i]
        FinSi
    FinPara
    
    Escribir "Arreglo de números negativos:"
    Para i<-1 Hasta k Con Paso 1 Hacer
        Escribir arrNe[i]
    FinPara
	Esperar Tecla	
FinFuncion


// 5)Leer una secuencia de números hasta que se ingrese un numero negativo.
//Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3
//Ejemplo:
//secuencia: 4,14,3,0,21,2,-4
//Respuesta
//paresSuma=20
//contMuliplos3=2


//entr:n, supa, cm3 Como Entero supa <- 0 ; cm3 <- 0
//pro: Mientras n >= 0 Hacer Si n % 2 = 0 Entonces supa <- supa + n ; Si n % 3 = 0 Entonces cm3 <- ct3 + 1
//sal: suma de los pares ; cantidad de numeros que son multiplos 

Funcion ejercicio05(0)
	Definir n, supa, cm3 Como Entero
	supa <- 0
	cm3 <- 0
	Escribir "Ingrese una secuencia de números. Ingrese un número negativo para terminar."
	Leer n
	Mientras n >= 0 Hacer
		Si n % 2 = 0 Entonces
			supa <- supa + n
		FinSi
		Si n % 3 = 0 Entonces
			cm3 <- cm3 + 1
		FinSi
		Leer n
	FinMientras
	Escribir "La suma de los números pares es: ", supa
	Escribir "La cantidad de números que son múltiplos de 3 es: ", cm3
	Esperar Tecla	
FinFuncion



// 6)Leer una secuencia de números hasta que se ingrese un 0
//y almacenarlos en un arreglo
//Se pide recorrer el arreglo y mostrar la suma del cuadrado de cada numero.
//Ejemplo: secuencia: 4,3,2,5,0
//arreglo=[4,3,2,5]
//exponentes= 16 9 4 25
//respuestaSuma=54
// emt:i, num, suma, respuestaSuma, x Como Entero; arreglo Como Enteroi = 0 num = 1; respuestaSuma=0 ; Dimension arreglo[100]
//pro:   Mientras num <> 0 Hacer Escribir "Ingrese un número (0 para terminar): " Leer num arreglo[i] = num i = i + 1
//i = 0 suma = 0 escribir "Elevados al cuadrado"  Mientras arreglo[i] <> 0 Hacer	x=arreglo[i] * arreglo[i]	respuestaSuma = respuestaSuma + x
//i = i + 1 Escribir ":", x ; 
//sal: mostrar suma de los cuadrados de los numeros ingresados 
Funcion ejercicio06(0)
    Definir i, num, suma, respuestaSuma, x Como Entero
    Definir arreglo Como Entero
    i = 0
    num = 1; respuestaSuma=0
	Dimension arreglo[100]
    Mientras num <> 0 Hacer
        Escribir "Ingrese un número (0 para terminar): "
        Leer num
        arreglo[i] = num
        i = i + 1
    FinMientras
    i = 0
    suma = 0
	escribir "Elevados al cuadrado" 
    Mientras arreglo[i] <> 0 Hacer
		x=arreglo[i] * arreglo[i]
        respuestaSuma = respuestaSuma + x
        i = i + 1
		Escribir ":", x
    FinMientras
	
    Escribir "La suma de los cuadrados de los números ingresados es: ", respuestaSuma 
	Esperar Tecla	
FinFuncion


//Leer una secuencia de números hasta que se ingrese un numero par.
//Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5
//Ejemplo:
//secuencia: 3,5,15,7,9, 4
//Respuesta
//contMay5=3
//sumaMultiplos5=20
//ent: n,cM5,sM5  Como Entero ;n=0; cM5 <- 0; sM5 <- 0
//pro:  Mientras (n Mod 2 <> 0) Hacer Leer n ; Si (n > 5) Entonces cM5 <- cM5 + 1 FinSi
//Si (n Mod 5 = 0) Entonces sM5 <- sM5 + n
//sal: cantidad de numeros mayores a 5 ; Suma de los múltiplos de 5
funcion ejercicio07(0)
    Definir n,cM5,sM5  Como Entero
	n=0
    cM5 <- 0
    sM5 <- 0
    Escribir "Ingrese una secuencia de números(Terminara si el numero es par):"
	leer n
    Mientras (n Mod 2 <> 0) Hacer
        Leer n
        Si (n > 5) Entonces
            cM5 <- cM5 + 1
        FinSi
        Si (n Mod 5 = 0) Entonces
            sM5 <- sM5 + n
        FinSi
    FinMientras
    Escribir "Cantidad de números mayores a 5: ", cM5
    Escribir "Suma de los múltiplos de 5: ", sM5
	Esperar Tecla	
FinFuncion






//8) Leer una secuencia de números hasta que se ingrese un numero negativo
//y almacenarlos en un arreglo
//Se pide recorrer el arreglo y mostrar la suma de cada número elevado al cubo.
//Ejemplo: secuencia: 4,3,2,5,-1
//arreglo=[4,3,2,5]
//exponentes= 64 27 8 125
//respuestaSuma=224
//ent: i, num, suma, expo Como Entero; arreglo Como Entero ; Dimension arreglo[100] , i = 0 , suma = 0
//pro:   Mientras num >= 0 Hacer arreglo[i] = num expo = arreglo[i]^3 suma = suma + expo i = i + 1
//sal: suma de los numeros elevados al cubo

Funcion ejercicio08(0)
	Definir i, num, suma, expo Como Entero
    Definir arreglo Como Entero
	Dimension arreglo[100]
    i = 0
    suma = 0
    escribir "Ingrese un número: "
	leer num
    Mientras num >= 0 Hacer
		
        arreglo[i] = num
        expo = arreglo[i]^3
        suma = suma + expo
        i = i + 1
        escribir "Ingrese un número: "
		leer num
		
    FinMientras
    Escribir"La suma de cada número elevado al cubo es: ", suma
	Esperar Tecla	
FinFuncion

//9) Dado una frase indicar cuantas palabras tiene
//Ejemplo:
//frase="hola que tal".
//contPalabras=3

//ent: pa como cadena ; esp, i, can como entero  ;esp=0; i=0;can=0 ; can=Longitud(frase)
//pro: Para i<- 0 Hasta can-1 Con Paso 1 Hacer si Subcadena(pa,i,i)=" " Entonces esp=esp+1 
//sal: determinar cuantas palabras tiene 
Funcion ejercicio09(pa)
    
	definir esp, i, can como entero 
	esp=0; i=0;can=0
	
	can=Longitud(pa)
	
	Para i<- 0 Hasta can-1 Con Paso 1 Hacer
		si Subcadena(pa,i,i)=" " Entonces
			esp=esp+1 
		FinSi
	FinPara
	Escribir "la frase contiene ",esp+1 , " palabras"
	Esperar Tecla	
FinFuncion

//10) Leer una secuencia de números hasta que se ingrese un numero negativo
//y almacenarlos en arreglo. Se pide recorrer el arreglo y cambiar cada
//elemento del arreglo por su doble.
//Ejemplo: secuencia: 4,3,6,9,-1
//		arreglo=[4,3,6,9] = [8,6,12,18]
//ent:  a1,a2,i,j,k como entero ; Dimension a1[100],a2[100]
//pro:  Mientras a1[i] >= 0 Hacer i = i + 1 Leer a1[i] ; i = i - 1 j = 1 Para k = 1 Hasta i Con Paso 1 Hacer a2[j] = a1[k]*2
//	j = j + 1 ;  Para k = 1 Hasta j-1 Con Paso 1 HacerEscribir a2[k]
//sal: numeros pares 

Funcion ejercicio010(0)
    Definir a1,a2,i,j,k como entero
    Escribir "Ingrese una secuencia de números, finalice con 0"
    i = 1
	Dimension a1[100],a2[100]
    Leer a1[i]
    Mientras a1[i] >= 0 Hacer
        i = i + 1
        Leer a1[i]
		
    FinMientras
    i = i - 1
    j = 1
    Para k = 1 Hasta i Con Paso 1 Hacer
        
		a2[j] = a1[k]*2
		j = j + 1
    FinPara
    Escribir "Los números pares son:"
    Para k = 1 Hasta j-1 Con Paso 1 Hacer
        Escribir a2[k]
    FinPara
	Esperar Tecla	
FinFuncion



//11) Leer una secuencia de caracteres hasta que se ingrese un punto.
//Deberá mostrar cuantos "x" se ingresaron
//Ejemplo:
//	secuencia="axyrx".
//	contX= 2
//ent: secuencia Como Caracter; contX, i, x Como Entero ;x=0 ;contX = 0
// Para i = 0 Hasta Longitud(secuencia) Hacer Si Subcadena(secuencia, i,i) = "x" Entonces contX = contX + 1
//sal: Escribir "Se ingresaron ", contX, " veces el carácter x."
Funcion ejercicio011(secuencia) 
	
    Definir contX, i, x Como Entero
    x=0
    contX = 0
    
    Para i = 0 Hasta Longitud(secuencia) Hacer
        Si Subcadena(secuencia, i,i) = "x" Entonces
            contX = contX + 1
        FinSi
    FinPara
    
    Escribir "Se ingresaron ", contX, " veces el carácter x."
	Esperar Tecla	
FinFuncion

// 12)Leer una secuencia de números hasta que se ingrese un 0
//y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro
//arreglo solo los números pares de cada elemento del arreglo1
//Ejemplo: secuencia: 4,3,6,9,0
//arreglo1=[4,3,6,9] arreglo2= [4,6]
//ent: a1,a2,i,j,k como entero ;  i = 1 ;Dimension a1[100],a2[100]
//pro:  Mientras a1[i] <> 0 Hacer ;i = i + 1 ;   i = i - 1 ;j = 1 Para k = 1 Hasta i Con Paso 1 Hacer
//Si a1[k] Mod 2 = 0 Entonces a2[j] = a1[k] ; j = j + 1 ; Para k = 1 Hasta j-1 Con Paso 1 Hacer Escribir a2[k]
//sal: numeros pares 

Funcion ejercicio012(0)
    Definir a1,a2,i,j,k como entero
    Escribir "Ingrese una secuencia de números, finalice con 0"
    i = 1
	Dimension a1[100],a2[100]
    Leer a1[i]
    Mientras a1[i] <> 0 Hacer
        i = i + 1
        Leer a1[i]
    FinMientras
    i = i - 1
    j = 1
    Para k = 1 Hasta i Con Paso 1 Hacer
        Si a1[k] Mod 2 = 0 Entonces
            a2[j] = a1[k]
            j = j + 1
        FinSi
    FinPara
    Escribir "Los números pares son:"
    Para k = 1 Hasta j-1 Con Paso 1 Hacer
        Escribir a2[k]
    FinPara
	Esperar Tecla	
FinFuncion


//13) Dado dos números presentar los valores mayores a 5 entre ellos incluidos el numero inicial  
//y final
//ent: n1 ; n2 
//pro:definir i  como entero; Para i<-n1 Hasta n2 Con Paso 1 Hacer Si i > 5 Entonces Escribir i
//sal: numeros mayores de 5 desde n1 hasta n2 
funcion NumerosMayoresA5(n1,n2)
	definir i  como entero
	
    Escribir "Los números mayores a 5 entre ", n1, " y ", n2, " son:"
    Para i<-n1 Hasta n2 Con Paso 1 Hacer
        Si i > 5 Entonces
            Escribir i
        FinSi
    FinPara
	Esperar Tecla	
FinFuncion

//14) Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y 
//los guarde en un arreglo. Se pide:
//	· calcular el promedio general de las edades de los alumnos
//	· La cantidad y el promedio de las edades mayores o iguales a 18
//	· La cantidad y el promedio de las edades menores a 18
//ent:  n, i, su, pro, ma, me, pma,pme como real ; (ma=0; me=0;pma=0; pme=0) ; arreglo como Entero
//pro: Dimension arreglo[n] ;   Para i = 0 Hasta n-1 Con Paso 1 Hacer   su = su + arreglo[i] Si arreglo[i]>=18 Entonces
//pma=pma+arreglo[i] ma=ma+1 ; SiNo pme=pme+arreglo[i] me=me+1; pro=su/n ;pma=pma/ma ; pme=pme/me
//sa: promedio , cantidad de mayores de edad , y de menores de edad 
Funcion edades(0)
	Definir n, i, su, pro, ma, me, pma,pme como real
	ma=0; me=0;pma=0; pme=0
    Escribir "Ingrese la cantidad de edades a analizar: "
    Leer n
	Definir arreglo como Entero
	Dimension arreglo[n]
    su = 0
    Para i = 0 Hasta n-1 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i+1, ": "
        Leer arreglo[i]
        su = su + arreglo[i]
		Si arreglo[i]>=18 Entonces
			pma=pma+arreglo[i]
			ma=ma+1
		SiNo
			pme=pme+arreglo[i]
			me=me+1
		Fin Si
    FinPara
	pro=su/n
	pma=pma/ma
	pme=pme/me
	
	escribir "El promedio es: ", pro
	escribir "Hay ", ma, " mayores y su promedio es ", pma
	escribir "Hay ", me, " menores y su promedio es ", pme
	Esperar Tecla	
FinFuncion

//15) Dado dos números presentar los valores Impares comprendidos entre ellos(excluidos el 
//valor inicial y final)
//Ejemplo: numero1=2 numero2=11
//salida: 3 5 7 9

//ent: impa, n, i, j,n1,n2 como entero ; Dimension impa[1000] ; j=1
//pro: ingresar n1 y n2 ; Para i<-n1+1 hasta n2-1 Con Paso 1 Hacer Si i%2<> 0 Entonces impa[j]<- i (j=j+1) finsi
//Para i<-n1+1 hasta n2-1 Con Paso 1 Hacer Si i%2<> 0 Entonces impa[j]<- i (j=j+1)
//sal: numeros impares que se encuentran entre n1 y n2 (sin incluirlos) 
Funcion impare(0)
	definir impa, n, i, j,n1,n2 como entero 
	Dimension impa[1000]
	escribir "ingrese el primer numero; "
	leer n1
	escribir "ingrese el segundo numero; "
	leer n2
	j=1
	Para i<-n1+1 hasta n2-1 Con Paso 1 Hacer
		Si i%2<> 0 Entonces
			impa[j]<- i
			j=j+1
		Fin Si
	Fin Para
	
	escribir "los numeros impares entre ", n1, " y ", n2, " sonn;"
	Para i<-1 Hasta j-1 Con Paso 1 Hacer
		Escribir impa[i]
	FinPara
	Esperar Tecla	
FinFuncion

//16) Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los 
//guarde en un arreglo. Se pide:
//	· Presentar el sueldo más alto de los empleados
//	· La cantidad y el promedio de os sueldos de los empleados
//ent: su, to, ma, pro, n,i,x Como real ; ma=0;x=0 ; Dimension su[n]
//pro: para i<- 0 Hasta n-1 Con Paso 1 Hacer  Escribir "Ingrese los sueldos: "Leer su[i] Si su[i]>ma Entonces (ma=su[i]) ;x=x+su[i];pro= x/n
//sal: cantidad de sueldos ; el sueldo mayor ; el promedio de los sueldos ingresados 

Funcion sueldos(0)
	Definir su, to, ma, pro, n,i,x Como real
	ma=0;x=0
	Escribir "Ingrese los sueldos a analizar: "
    Leer n
	Dimension su[n]
	para i<- 0 Hasta n-1 Con Paso 1 Hacer 
		Escribir "Ingrese los sueldos: "
		Leer su[i]
		Si su[i]>ma Entonces
			ma=su[i]
		Fin Si
		x=x+su[i]
	FinPara
	pro= x/n
	Escribir "La cantidad de sueldos son; ",i
	Escribir "el sueldo mayor es;", ma
	Escribir "El promedio es; ",pro
	Esperar Tecla	
FinFuncion


//17) Dadas dos frase indicar la de mayor longitud"
//ent: frase1 , frase2 como caracter ;  n1, n2 Como Entero
//pro:n1=Longitud(l1) ;n2=Longitud(l2) ; Si n1>n2 Entonces la primera frase es de mayor longitud , sino, la segunda 
//sal: indentificar y escribir si la primera frase es de mayor longitud o es la segunda .
Funcion letras(l1,l2)
	
	Definir  n1, n2 Como Entero
	
	n1=Longitud(l1)
	n2=Longitud(l2) 
	Si n1>n2 Entonces
		Escribir "La palabra de mayor longitud es ", l1
	SiNo
		Si n2>n1 Entonces
			Escribir "La palabra de mayor longitud es ", l2
		SiNo
			Escribir "Error!, las palabras ingresadas tienen las mismas longitudes"
		Fin Si
	Fin Si
	Esperar Tecla	
FinFuncion

//18) Indicar cuantas ,.;: hay en una cadena
//ent: definir frase Como Caracter ; definir pun , x, z, com, pun2, punc,i Como Entero ;(pun=0 ; x=0;com=0;pun2=0; punc=0;i=0)
//pro: frase =Minusculas(frase) x=Longitud(frase) z=0; Mientras x>=z Hacer Segun SubCadena(frase,z,z) Hacer (pun=pun+1
//i=i+1) ; (com=com+1 , i=i+1) ; (pun2=pun2+1 , i=i+1) ; (i=i+1 , punc=punc+1)
//sal: cantidad de puntos , comas , punto y coma, doble punto 
Funcion Contarpuntos(frase)
	
	definir pun , x, z, com, pun2, punc,i Como Entero
	
	pun=0 ; x=0;com=0;pun2=0; punc=0;i=0
	
	
	frase =Minusculas(frase)
	x=Longitud(frase)
	z=0
	Mientras x>=z Hacer
		Segun SubCadena(frase,z,z) Hacer
			".":
				pun=pun+1
				i=i+1
			",":
				com=com+1
				i=i+1
			";":
				pun2=pun2+1
				i=i+1
			":":
				i=i+1
				punc=punc+1
				
		Fin Segun
		z=z+1
	Fin Mientras
	Escribir "La frase es: ",frase
	escribir "contiene ", pun, " puntos"
	escribir "contiene ", com, " comas"
	escribir "contiene ", pun2, " dobles puntos"
	escribir "contiene ", punc, " punto y coma"
	escribir "su total es de ", i
	Esperar Tecla	
FinFuncion

//19) Dado una cadena indicar cuantas vocales, consonantes y dígitos hay"
//ent:  frase Como Caracter ;  i, x, z, c, d Como Entero ; i=0 ; x=0; c=0; d=0
//pro: frase =Minusculas(frase) ;x=Longitud(frase)-1 ;z=0 ; Mientras x>=z Hacer Segun SubCadena(frase,z,z) Hacer
//"a":i=i+1
//"e":i=i+1
//"i":i=i+1
//"o":i=i+1
//"u":i=i+1
//De Otro Modo: c=c+1 
//z=z+1
//sal: cantidad de (vocales , consonantes , digitos ) en la frase 

Funcion ContarVocalConsonante(frase)
	
	definir i, x, z, c, d Como Entero
	
	i=0 ; x=0; c=0; d=0
	
	frase =Minusculas(frase)
	x=Longitud(frase)-1
	z=0
	Mientras x>=z Hacer
		Segun SubCadena(frase,z,z) Hacer
			"a":i=i+1
			"e":i=i+1
			"i":i=i+1
			"o":i=i+1
			"u":i=i+1
			De Otro Modo:
				c=c+1
		Fin Segun
		z=z+1
	Fin Mientras
	Escribir "La frase es: ",frase
	Escribir "contiene ",i," vocales"
	Escribir "contiene ",c," consonates"
	Escribir "contiene ",z," digitos"
	Esperar Tecla	
FinFuncion

//20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
//ent: definir frase como cadena ; definir esp, i, can como entero ; esp=0; i=0;can=0
//pro: ingresar la frase (leer);can=Longitud(frase); Para i<- 0 Hasta can-1 Con Paso 1 Hacer si Subcadena(frase,i,i)=" " Entonces
//esp=esp+1
//sal: numero de palabras en la frase ; numero de espacios en blancos en la frase 
Funcion contarPalabras(frase)
	
	definir esp, i, can como entero 
	esp=0; i=0;can=0
	
	can=Longitud(frase)
	
	Para i<- 0 Hasta can-1 Con Paso 1 Hacer
		si Subcadena(frase,i,i)=" " Entonces
			esp=esp+1 
		FinSi
	FinPara
	Escribir "la frase contiene ",esp+1 , " palabras"
	Escribir "la frase contiene ",esp, " espacios"
	Esperar Tecla	
FinFuncion

//21) Presentar la suma de los dígitos de una cedula"
//ent:  cedula Como Entero; digitos Como Entero; Dimension digitos[11] ;  i, suma Como Entero (i=0)
//pro: ingresar cedula (leer) ; Para i <- 1 Hasta 10 Con Paso 1 Hacer digitos[i] <- cedula MOD 10 cedula <- (cedula - digitos[i]) / 10
//suma <- 0 Para i <- 1 Hasta 10 Con Paso 1 Hacer suma <- suma + digitos[i]
//sal: suma total de todos los digitos de la cedula 
Funcion sumarDigitos(cedula)
	
	Definir digitos Como Entero
	Dimension digitos[11]
	Definir i, suma Como Entero
	i=0
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		digitos[i] <- cedula MOD 10
		cedula <- (cedula - digitos[i]) / 10
	FinPara
	
	suma <- 0
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		suma <- suma + digitos[i]
	FinPara
	
	Escribir "La suma de los dígitos de su cédula es:", suma
	
	Esperar Tecla	
FinFuncion

//22) Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual de 
//	inicio a fin que de fin a inicio
//ent: palabra, inversa Como Cadena;  i, long Como Entero
//pro: leer palabra ; long <- Longitud(palabra) inversa="" ;  Para i <- long hasta -1 hacer inversa <- concatenar(inversa, Subcadena(palabra, i, i))
//Si palabra = inversa entonces es palindromo sino no es palindromo 
//sal: escribir si la palabra ingresada es palindrama o no 

Funcion polindromo(palabra)
	Definir  inversa Como Cadena
    Definir i, long Como Entero
	
    long <- Longitud(palabra)
	inversa=""
    Para i <- long hasta -1 hacer
        inversa <- concatenar(inversa, Subcadena(palabra, i, i))
    Fin Para
	
    Si palabra = inversa entonces
        Escribir "La palabra ",palabra, " es palíndromo."
    Sino
        Escribir "La palabra ",palabra, " no es palíndromo."
    Fin Si	
	
	Esperar Tecla	
FinFuncion

//	23) Presentar la posición de un carácter cualquiera dentro de una cadena
//ent: frase,x como cadena  ;  esp, i, can como entero  ; esp=0; i=0;can=0
//pro: can=Longitud(frase) Para i<- 0 Hasta can-1 Con Paso 1 Hacer si Subcadena(frase,i,i)=x Entonces esp=i
//sal: posicion del carater 
Funcion esp<-contar_Palabras(frase,x)
    
	definir esp, i, can como entero 
	esp=0; i=0;can=0
	
	can=Longitud(frase)
	
	Para i<- 0 Hasta can-1 Con Paso 1 Hacer
		si Subcadena(frase,i,i)=x Entonces
			esp=i
		FinSi
	FinPara
	Esperar Tecla	
FinFuncion




// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir opcio,opc1 Como Caracter
	Definir pos,lim Como Entero
	opcio="";opc1=""

	mientras opcio <> '5' hacer
		escribir "Menu principal"
		escribir "1)Ejercicios con Numeros"
		escribir "2)Operaciones con Numeros"
		escribir "3)Operaciones con Cadenas"
		escribir "4)Operaciones con Arreglos"
		escribir "5) Salir"
		Escribir "       Elija opció[1...4,]" Sin Saltar
		leer opcio
		Borrar Pantalla
		segun opcio
			"1":
				mientras opc1 <> '13' hacer	
					escribir "----------Ejercicios con Numeros----------"
					Escribir  "1) Distribuidora de colas"
					Escribir " 2) La asociación de vinicultores de uvas"
					Escribir " 3) Obtener el residuo sin el operador mod"
					Escribir " 4) Consultorio del Dr. Paez"
					Escribir " 5) Lea cuatro números y si el numero 1 es la mitad del número 2; Y si el numero 3 es divisor del numero 4"	
					Escribir " 6) Banco XYZ"
					Escribir " 7) Lea cuatro números y determine si el numero 1 es divisor del numero 3 Y si el numero 2 es el doble del numero4"
					Escribir " 8)Banco POO"
					Escribir " 9)Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es positivo par o impar múltiplo de 7"
					Escribir "10)La asociación de vinicultores de pitajaya"
					Escribir "11)Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e impar o negativo divisible para 5."
					Escribir "12)Fábricas El cometa" 
					Escribir "13) salir" 
					Escribir "       Elija opció[1...13,]" Sin Saltar
					leer opc1
					Borrar Pantalla
					segun opc1
						"1":Escribir  "1) Distribuidora de colas"
							ejercicio1(0)
							
						"2":Escribir " 2) La asociación de vinicultores de uvas"
							ejercicio2(0)
							
						"3":Escribir " 3) Obtener el residuo sin el operador mod"
							ejercicio3(0)
							
						"4":Escribir " 4) Consultorio del Dr. Paez"
							ejercicio4(0)
							
						"5":Escribir " 5) Lea cuatro números y si el numero 1 es la mitad del número 2; Y si el numero 3 es divisor del numero 4"
							ejercicio5(0)
							
						"6":Escribir " 6) Banco XYZ"
							ejercicio6(0)
							
						"7":Escribir " 7) Lea cuatro números y determine si el numero 1 es divisor del numero 3 Y si el numero 2 es el doble del numero4"
							ejercicio7(0)
							
						"8":Escribir " 8)Banco POO"
							ejercicio8(0)
							
						"9":Escribir " 9)Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es positivo par o impar múltiplo de 7"
							ejercicio9(0)
							
						"10":Escribir "10)La asociación de vinicultores de pitajaya"
							ejercicio10(0)
							
						"11":Escribir "11)Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e impar o negativo divisible para 5."
							ejercicio10(11)
							
						"12":Escribir "12)Fábricas El cometa" 
							ejercicio12(0)
						De Otro Modo:
						"13":Escribir "13) Salir" 
							Borrar Pantalla
					FinSegun
					
				FinMientras
				Borrar Pantalla
			"2":
				mientras opc1 <> '10' hacer	
					escribir "----------Operaciones con Numeros----------"
					Escribir "1) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número."
					Escribir "2) Determinar si un número es capicúa "
					Escribir "3) presente los divisores de un numero"
					Escribir "4)presente la suma de los divisores de un numero"
					Escribir "5)presente la cantidad de los divisores de un numero"
					Escribir "6)indique si un número es perfecto"
					Escribir "7)determinar si es un número primo"
					Escribir "8)determinar si son primos gemelo"
					Escribir "9)determinar si son primos amigos."
					Escribir "10) salir" 
					Escribir "       Elija opció[1...10,]" Sin Saltar
					leer opc1
					Borrar Pantalla
					Segun opc1 Hacer
						"1":Escribir"1) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número."
							ejercicio13(0)
							
						"2":Escribir"2) Determinar si un número es capicúa "
							
							ejercicio14(0)
						"3":Escribir"3) Presente los divisores de un numero"
							
							ejercicio15(0)
						"4":Escribir"4) Presente la suma de los divisores de un numero"
							ejercicio16(0)
							
						"5":Escribir"5) Presente la cantidad de los divisores de un numero"
							
							ejercicio17(0)
						"6":Escribir"6) Indique si un número es perfecto"
							ejercicio18(0)
							
						"7":Escribir"7) Determinar si es un número primo"
							ejercicio19(0)
							
						"8":Escribir"8) Determinar si son primos gemelo"
							
							ejercicio20(0)
						"9":Escribir"9) Determinar si son primos amigos."
							ejercicio21(0)
						De Otro Modo:
							Escribir "10) salir"
							Borrar Pantalla
				FinSegun
					
				
		    FinMientras
			
		"3":
			mientras opc1 <> '13' hacer	
				escribir "----------Operaciones con Cadenas----------"
			Escribir"1) Secuencia de números hasta que se ingrese un numero negativo"
			Escribir"2) Secuencia de números hasta que se ingrese un numero par."
			Escribir"3) Indicar cuantas palabras tiene una frase"
			Escribir"4) Secuencia de caracteres hasta que se ingrese un punto."
			Escribir"5) Dado dos números presentar los valores mayores a 5"
			Escribir"6) Dado dos números presentar los valores Impares"
			Escribir"7) Dadas dos frase indicar la de mayor longitud"
			Escribir"8) Indicar cuantas ,.;: hay en una cadena"
			Escribir"9) Indicar cuantas vocales, consonantes y dígitos hay"
			Escribir"10) Cuantas palabras hay en una frase contando los espacios"
			Escribir"11) Palabra palíndroma"
			Escribir"12) Posición de un carácter "
			Escribir "13) salir" 
				Escribir "       Elija opció[1...13,]" Sin Saltar
				leer opc1
				Borrar Pantalla
				Segun opc1 Hacer
					"1":Escribir"1) Secuencia de números hasta que se ingrese un numero negativo c"
						ejercicio08(0)
						
					"2":Escribir"2) Secuencia de números hasta que se ingrese un numero par."
						ejercicio07(0)
						
					"3":Escribir"3) Indicar cuantas palabras tiene una frase"
						definir pa como cadena 
						Escribir "Ingresa una frase: "
						leer pa
						ejercicio09(pa)
						
					"4":Escribir"4) Secuencia de caracteres hasta que se ingrese un punto."
						Definir secuencia Como Caracter
						Escribir "Ingrese una secuencia de caracteres (ingrese un punto para finalizar): "
						Leer secuencia
						ejercicio011(secuencia) 
						
					"5":Escribir"5) Dado dos números presentar los valores mayores a 5"
						
						definir n1, n2  como entero	
						Escribir "Ingrese el primer número:"
						Leer n1
						Escribir "Ingrese el segundo número:"
						Leer n2
                         NumerosMayoresA5(n1,n2)
					"6":Escribir"6) Dado dos números presentar los valores Impares"
						impare(0)
						
					"7":Escribir"7) Dadas dos frase indicar la de mayor longitud"
						definir l1, l2 Como Caracter	
						Escribir "Ingresa la primer frase: "
						leer l1
						Escribir "Ingresa la segunda frase: "
						leer l2
						letras(l1,l2)
						
					"8":Escribir"8) Indicar cuantas ,.;: hay en una cadena"
						definir frase Como Caracter
						frase = ""
						escribir "ingresa la frase : "
						Leer frase
						Contarpuntos(frase)
						
					"9":Escribir"9) Indicar cuantas vocales, consonantes y dígitos hay"
						definir frase Como Caracter
						frase = ""
						escribir "ingresa la frase : "
						Leer frase
						ContarVocalConsonante(frase)
						
					"10":Escribir"10) Cuantas palabras hay en una frase contando los espacios"
						definir frase como cadena 
						Escribir "Ingresa una frase: "
						leer frase
						contarPalabras(frase)
						
					"11":Escribir"11) Palabra palíndroma"
						Definir palabra Como Cadena
						Escribir "Ingrese una palabra: "
						Leer palabra
						polindromo(palabra)
						
					"12":Escribir"12) Posición de un carácter "
						definir frase,x como cadena 
						Escribir "Ingresa una frase: "
						leer frase
						escribir "ingresa un caracter"
						leer x
						Escribir "el caracter se encuentra en la posicion ",contar_Palabras(frase,x)+1
						
					De Otro Modo:
						Escribir "13) salir" 
						Borrar Pantalla
				FinSegun
				
				
		    FinMientras
			
		"4":
			mientras opc1 <> '12' hacer	
				escribir "----------Operaciones----------"
			Escribir"1) Presentar una secuencia "
			Escribir"2) Presentar una secuencia "
			Escribir"3) Calcular el promedio de num pares e impares"
			Escribir"4) Separar arreglos en positivos y negativos "
			Escribir"5) Secuencia de números hasta que se ingrese un 0"
			Escribir"6) Secuencia de números hasta que se ingrese un numero negativo m3" 
			Escribir"7) Secuencia de números hasta que se ingrese un numero negativo doble del arreglo"
			Escribir"8) Secuencia de números hasta que se ingrese un 0 separar los pares"
			Escribir"9) Serie  de edades de los alumnos de la facultad FACI"
			Escribir"10) Serie de sueldos de los empleados de la unemi"
			Escribir"11) Presentar la suma de los dígitos de una cedula"
			Escribir "12) salir" 
				Escribir "       Elija opció[1...12,]" Sin Saltar
				leer opc1
				Borrar Pantalla
				Segun opc1 Hacer
					"1":Escribir"1) Presentar una secuencia "
						Definir n Como Entero
						Escribir "Ingrese el valor de n:"
						Leer n
						ejercicio01(n)
						
					"2":Escribir"2) Presentar una secuencia "
						
						ejercicio03(0)
					"3":Escribir"3) Calcular el promedio de num pares e impares"
						ejercicio02(0)
						
					"4":Escribir"4) Separar arreglos en positivos y negativos "
						ejercicio04(0)
						
					"5":Escribir"5) Secuencia de números hasta que se ingrese un 0"
						ejercicio06(0)
						
					"6":Escribir"6) Secuencia de números hasta que se ingrese un numero negativo m3" 
						ejercicio05(0) 
						
					"7":Escribir"7) Secuencia de números hasta que se ingrese un numero negativo doble del arreglo"
						ejercicio010(0)
						
					"8":Escribir"8) Secuencia de números hasta que se ingrese un 0 separar los pares"
						ejercicio012(0)
						
					"9":Escribir"9) Serie  de edades de los alumnos de la facultad FACI"
						edades(0)
						
					"10":Escribir"10) Serie de sueldos de los empleados de la unemi"
						sueldos(0)
						
					"11":Escribir"11) Presentar la suma de los dígitos de una cedula"
						Definir cedula Como Entero
						Escribir "Ingrese su cédula:"
						Leer cedula
						sumarDigitos(cedula)
						
					De Otro Modo:
						Escribir "12) salir"
						Borrar Pantalla
				FinSegun
				
				
			FinMientras
		De Otro Modo:
			
			Escribir "Gracias por usar el sistema"	
		
	FinSegun
	
finmientras
FinAlgoritmo