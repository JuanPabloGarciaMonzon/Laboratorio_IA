![](https://portal.ingenieria.usac.edu.gt/images/logo_facultad/logo_azul.png)
# Universidad de San Carlos de Guatemala 
# Facultad de Ingeniería
# Escuela de Ciencias y Sistemas
# Laboratorio de Inteligencia Artificial
# Sección A
| Practica       | 1              |
|----------------|----------------|

# Realizado por: Juan Pablo García Monzón
# 2012-22615

## El manual explica de forma explicita el flujo de trabajo del RPA (Robot Process Automation) realizado con el S.O UiPath. 

## El siguiente diagrama de flujo muestra como es el proceso de la tarea automatizada:

![](imagenes\flow_diagram.png)


## A continuación la explicación de trasladar este diagrama a nuestra programacón de bloques que nos proporciona el S.O UiPath.

### Actividades utilizadas en el proyecto
* Use Excel File
* Group
* Save For Later
* Use Browser
* Type Into
* Click
* Check App State 'Verify'
* Delay
* Navigate Browser
* Mouse Scroll
* Keyboard Shortcuts
* Send SMTP
* Delete

|No.             |Actividad       | Descripción     |  
|----------------|--------------- |---------------- |
| 1 | Use Excel File | Se localiza el archivo Excel a utilizar  |
| 2 | Save For Later | Se crea la variable DPI y se asigna el valor correspondiente de la Hoja de Excel  |
| 3 | Save For Later| Se crea la variable Fecha y se asigna el valor correspondiente de la Hoja de Excel  |
| 4 | Use Browser | Se usa el navegador Google Chrome, y se visita la URL [Vacuna](https://registrovacunacovid.mspas.gob.gt/mspas/citas/consulta)  |
| 5 | Type Into | Se ubica el textbox correspondiente para escribir el número de DPI   |
| 6 | Type Into | Se ubica el textbox correspondiente para escribir la Fecha    |
| 7 | Click | Se da clic en el checkbox de Recaptcha  |
| 8 | Check App State 'Verify' | Se verifica el estado de la página en dado caso nos aparezca un captcha con imagen se resuelve dando click a un botón que resuelve el acertijo, tecnologia proporciona por la extensión Buster y luego se procede al siguiente paso. Pero si el Recaptcha no tiene este comportamiento, inmeditamente se pasa al siguiente paso.    |
| 9 | Click | Clic en el botón "Buscar Datos"  |
| 10 | Delay | Delay de 2s  |
| 11 | Check App State 'Verify' | Se verifica que la página que nos lanza, no sea donde nos indica que tenemos nuestros intentos agotados para consultar nuestra información. Si este es el caso entonces se procede a termina el proceso, cerrando el navegador. Pero si la página que se nos muestra si nos da la oportunidad de descargar nuestra información, se procede al siguiente paso.   |
| 12 | Delay | Delay de 3s  |
| 13 | Navigate Browser | Se cierra la pestaña  |
| 14 | Use Browser | Se abre una nueva pestaña en Google Chrome y se visita [Tablero](https://tablerocovid.mspas.gob.gt/)  |
| 14 | Use Browser | Se abre una nueva pestaña en Google Chrome y se visita [Tablero](https://tablerocovid.mspas.gob.gt/)  |
| 15 | Delay | Delay de 5s  |
| 16 | Mouse Scroll | Se hace un scroll de rato de 3 unidades  |
| 17 | Delay | Delay de 30s |
| 18 | Click | Se da clic en el botón "Vacunación" |
| 19 | Mouse Scroll | Se hace un scroll del elemento cabecera hasta el pie de página, para asegurar que se carguen todos los datos. |
| 20 | Keyboard Shortcuts | Se graba el atajo de teclado "CTRL+P" para que se pueda utilizar la función de Imprimir en la página web  |
| 21 | Click | Se da clic en la opción "Guardar como PDF"  |
| 22 | Click | Se da clic en el botón "Guardar" |
| 23 | Type Into | Se escribe el nombre de archivo "tab201222615"  |
| 24 | Click | Se da clic en el botón "Guardar" |
| 25 | Delay | Delay de 2s  |
| 26 | Send SMTP | Se redacta un correo desde una cuenta especificada en las propiedades hacia un destinarario, se habilita en propiedades el número de puerto "465", el nombre de servidor de correo "smtp.gmail.com", además de habilitar una opción de aplicaciones menos seguras en la cuenta especificada.  |
| 27 | Delete | Se borra el archivo de "consulta_vacuna.pdf"|
| 27 | Delete | Se borra el archivo "tab201222615.pdf"  |


### Programación en bloques
![](imagenes\Main.png)