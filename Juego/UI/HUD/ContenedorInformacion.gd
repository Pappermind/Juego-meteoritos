#ContenedorInformacion.gd
class_name ContenedorInformacion
extends NinePatchRect

##Export var 
export var auto_ocultar:bool = false

##Atributos Onready
onready var texto_contenedor: Label = $Label
onready var auto_ocultar_timer: Timer = $AutoOcultarTimer
onready var animaciones: AnimationPlayer = $AnimationPlayer

##Atributos
var esta_activo: bool = true setget set_esta_activo

##Metodos
func modificar_texto(text: String) -> void: 
	texto_contenedor.text =text

func mostrar() -> void:
	if esta_activo:
		animaciones.play("Mostrar")

func ocultar() -> void:
	if not esta_activo:
		animaciones.stop()
	animaciones.play("Ocultar")

func mostrar_suavizado() -> void:
	if not esta_activo:
		return
	animaciones.play("mostrar_suavizado")
	if auto_ocultar:
		auto_ocultar_timer.start()

func ocultar_suavizado() -> void:
	if esta_activo:
		animaciones.play("ocultar_suavizado")


func _on_AutoOcultarTimer_timeout() -> void:
	ocultar_suavizado()

## Setters y Getters
func set_auto_ocultar(ocultar: bool):
	auto_ocultar = ocultar

func set_esta_activo(valor: bool) -> void:
	esta_activo = valor
