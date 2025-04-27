secciones=[
    "A-1",
    "A-2",
    "A-3",
    "A-4",
    "A-5"
]
inscribir_estudiantes= []



#primer paso, iniciar sesion en el programa
usuario_designado ="Emmanuel"
contrasena_designada ="Santiago"
print("")
def datos(usuario, contraseña):
    return usuario == usuario_designado and contraseña == contrasena_designada
print("")
def iniciar_sesion():
    intentos = 0
    maxintentos = 3 

    while intentos < maxintentos:
        usuario = input("Usuario: ")
        contrasena = input("Contraseña: ")

        if datos(usuario, contrasena):
            print("acceso correcto")
            return True
        else:
            intentos += 1
            print("acceso denegado, ingrese sus datos de nuevo")
            
    print("limite de intentos alcanzado")
    return False

#ahora vamos a hacer el menu para las secciones creadas por mi y tambien para inscribir estudiantes 

def menu_de_inscripcion():
    print("Menú de inscripciones de los estudiantes")
    #aqui me va a tirar las secciones y la que yo quiero escoger, ademas de las otras 2 opciones.
    while True:
        print("Secciones")
        print(f"", secciones)
        opcion=input("ingrese la seccion para inscribir un estudiante o digite, '2'consulta para estudiante inscrito o '3' para salir:").strip().upper()

        if opcion=="3": 
            break
        elif  opcion == "2":#aqui esta la opcion de consulta por secciones 
            seccion_a_consultar = input("Ingrese la sección que desea consultar: ").strip(). upper()
            encontrados = [i for i in inscribir_estudiantes if i["seccion"] == seccion_a_consultar]

            if not encontrados:
                print(f"No hay estudiantes inscritos en la seccion que consultaste")
            else:
                print(f"\nEstudiantes en la sección{seccion_a_consultar}:")
                for est in encontrados:
                    print(f"- {est['nombre']} {est['apellido']} | Cédula: {est['cedula']}")
            continue
        elif opcion.upper() not in secciones:
            print("Esta Seccion no esta disponible o no existe")
            continue
        #aqui recopilamos datos para inscribir estudiantes 
        seccion_escogida=opcion.upper()
        nombre_del_estudiante = input("Ingrese el nombre del estudiante: ")
        apellido_del_estudiante = input("Ingrese el apellido: ")
        cedula = input("Ingrese la cédula:")

        estudiante = {
            "nombre": nombre_del_estudiante,
            "apellido": apellido_del_estudiante,
            "cedula": cedula,
            "seccion": seccion_escogida
        }

        inscribir_estudiantes.append(estudiante)
        print("Estudiante inscrito exitosamente.")
        

        
        
if iniciar_sesion():
    menu_de_inscripcion()