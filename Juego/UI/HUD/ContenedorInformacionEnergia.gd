##ContenedorInformacionEnergia.gd
class_name ContenedorInformacionEnergia
extends ContenedorInformacion

##Atributos onready
onready var medidor: ProgressBar = $ProgressBar

##Metodos Customs
func actualizar_energia(energia_max: float, energia_actual: float) -> void:
# warning-ignore:narrowing_conversion
	var energia_porcentual: int = (energia_actual * 100) / energia_max
	medidor.value = energia_porcentual
