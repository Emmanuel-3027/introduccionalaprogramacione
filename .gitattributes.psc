Algoritmo EXAMEN
	Definir usuario, contraseña, iusuario, icontraseña Como Cadena
	definir acceso Como Logico
   definir usuarioscontraseñas Como Cadena
	Dimension usuariocontraseña[2]
    Definir intentos Como Entero
    acceso= Falso
	
	intentos = 0
	
    Escribir " digite su usuario"
	leer usuario
    Escribir "digite su contraseña "
    Leer contraseña
    usuariocontraseña[0] = usuario
    usuariocontraseña[1] = contraseña
	Mientras(acceso = falso Y intentos< 3)
        Escribir "digite su usuario "
        Leer iusuario
        Escribir "digite su contraseña"
        Leer icontraseña
		
        Si (iusuario = usuariocontraseña[0] Y icontraseña = usuariocontraseña[1]) Entonces
            Escribir "Acceso correcto"
			acceso= verdadero
        Sino
				Escribir "Usuario o contraseña incorrectos. Intente nuevamente."
			
			intentos=intentos+1
			
			si intentos>=3 Entonces
				escribir " acceso denegado"
				acceso= Falso
					


			FinSi
			
			
        finsi
	FinMientras
	definir opcionesdelmenu, monto, in, cargo como real
	definir historial como cadena
	definir saldo como real 
	dimension saldo[1]
	dimension historial[9999999,4]
	in=0
	saldo[0]=0
	si acceso= verdadero entonces 
	 
	FinSi
	
	repetir 
		escribir" menú"
		escribir 1. "depositar dinero en la cuenta"
		escribir 2. " sacar dinero de la cuenta" 
		escribir 3. " ver saldo" 
		escribir 4. " salir"
		escribir " Escoja una de las opciones anteriores "
		leer opcionesdelmenu
		Segun opcionesdelmenu Hacer
			1:
				escribir "digite el monto que quiere depositar"
				leer monto
				si monto>= 5000 entonces 
					cargo= monto*0.05
					escribir" al monto depositado", monto," se le aplicara un cargo, el total del deposito es", monto - cargo
					saldo[0]=saldo[0]+monto-cargo
					escribir " el saldo actual es de ", saldo[0] 
					
					
				FinSi
				historial[in,1] = "abono"
				historial[in,2] = ConvertirATexto(monto)
				historial[in,3] = ConvertirATexto(saldo[0])
				in = in + 1
			2:
				escribir " digite el monto que desea retirar "
				leer monto 
				si monto<=saldo[0] Entonces
					saldo[0]=saldo[0]-monto
					escribir "retiro realizado con exito, el monto retirado fue:", monto ," su saldo actual es de:," saldo[0]
					historial[in,1] = "retiro de dinero"
					historial[in,2] = ConvertirATexto(monto)
					historial[in,3] = ConvertirATexto(saldo[0])
					in = in +1
				sino
					escribir " retiro invalido, saldo insuficiente" 
					
				FinSi
			3:
				escribir " su saldo actual es de:" saldo[0] 
				escribir " historial" 
				
				
				si in=0 Entonces
					
					escribir " hasta el momento  no se ha ejecutado ninguna transaccion"
					
				sino 
					Para i=0 Hasta in-1 hacer
						Escribir "Transacción: ", historial[i, 1], ", Monto: ", historial[i,2], ", Saldo: ", historial[i, 3]
					Fin Para
				FinSi
				
			4: 
				escribir " saliendo"
			De Otro Modo:
				escribir " opcion escogida invalida, seleccione una de las opciones que se le presentan (1-4)"
		Fin Segun
	Hasta Que opcionesdelmenu=4
		


	
	
FinAlgoritmo
