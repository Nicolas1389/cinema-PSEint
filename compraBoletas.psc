SubProceso  mostrarSillas ( entradasBatman )
	definir muestra como entero;
	Para muestra<-0 Hasta 99 Con Paso 1 Hacer
		Escribir Sin Saltar entradasBatman(muestra),"-";
	Fin Para
	
Fin SubProceso

SubProceso venderBoletas ( entradasBatman )
	definir cant_entradas, num_asiento, i Como Entero;
	definir asientoVacio Como Logico;
	
	Escribir "¿cuantas entradas desea comprar?";
	Leer cant_entradas;
	Para i<-0 Hasta cant_entradas-1 Con Paso 1 Hacer
		asientoVacio = falso;
		Repetir
			Escribir "ingrese el número del asiento";
			leer num_asiento;
			Si entradasBatman[num_asiento-1] == "x" Entonces
				escribir "este asiento se encuentra ocupado";
				
			SiNo
				asientoVacio = Verdadero;
				entradasBatman[num_asiento-1] = "x";
				escribir " asiento ", num_asiento, " asignado exitosamente";
			Fin Si
		Hasta Que asientoVacio = Verdadero
		
	Fin Para
	
Fin SubProceso

SubProceso  mostrarSillasMinion ( entradasMinion )
	definir muestraMinion como entero;
	Para muestraMinion<-0 Hasta 99 Con Paso 1 Hacer
		Escribir Sin Saltar entradasMinion(muestraMinion),"-";
	Fin Para
	
Fin SubProceso

SubProceso venderBoletasMinion ( entradasMinion )
	definir cant_entradas, num_asiento, i Como Entero;
	definir asientoVacio Como Logico;
	
	Escribir "¿cuantas entradas desea comprar?";
	Leer cant_entradas;
	Para i<-0 Hasta cant_entradas-1 Con Paso 1 Hacer
		asientoVacio = falso;
		Repetir
			Escribir "ingrese el número del asiento";
			leer num_asiento;
			Si entradasMinion[num_asiento-1] == "x" Entonces
				escribir "este asiento se encuentra ocupado";
				
			SiNo
				asientoVacio = Verdadero;
				entradasMinion[num_asiento-1] = "x";
				escribir " asiento ", num_asiento, " asignado exitosamente";
			Fin Si
		Hasta Que asientoVacio = Verdadero
		
	Fin Para
	
Fin SubProceso
Proceso compraBoletas
	
	definir opciones, nomPelicula, saldo, Recarga como numerico;
	definir entradasBatman como caracter;
	definir entradasMinion Como Caracter;
	definir x Como entero;
	dimension entradasBatman[100];
	dimension entradasMinion[100];
	
	saldo<-50000
	
	Mientras 1==1 Hacer
		
	Escribir " para comprar boletas marque 1, para recargar tarjeta marque 2, 3 para salir";
	leer opciones;
	
		Segun opciones Hacer
		1:
			escribir "para ver Batman marque 1, para ver minion marque 2";
			Leer nomPelicula
			Segun nomPelicula Hacer
				1:
					Para x<-0 Hasta 99 Con Paso 1 Hacer
						entradasBatman[x]= ConvertirATexto(x-1);
						
					Fin Para
					venderBoletas(entradasBatman);
					mostrarSillas(entradasBatman);
				2:
					Para x<-0 Hasta 99 Con Paso 1 Hacer
						entradasMinion[x]= ConvertirATexto(x-1);
						
					Fin Para
					venderBoletasMinion(entradasMinion);
					mostrarSillasMinion(entradasMinion);
					
			Fin Segun
		2:
			EScribir "su saldo es de "  saldo;
			escribir "¿cuanto desea recargar?"
			Leer Recarga;
			Escribir "su saldo ahora es de " saldo + Recarga;
			saldo<-Recarga+saldo;
			Escribir "gracias por usar nuestro servicio";
			
		3:
			Escribir "gracias por usar nuestro servicio";

		De Otro Modo:
			Escribir "elija una de las tres opciones";
	Fin Segun
Fin Mientras
	
	
FinProceso
