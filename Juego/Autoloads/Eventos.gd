extends Node

signal disparo(proyectil)
signal nave_destruida(nave, posicion, explosiones)
signal spawn_meteoritos(direccion,posicion, tamanio)
signal destruccion_meteorito(posicion)
signal nave_en_sector_peligro(centro_camara, tipo_peligro, num_peligros)
signal base_destruida(base, posiciones)
signal spawn_orbital(orbital)
signal nivel_iniciado()
signal nivel_terminado()
signal detecto_zona_recarga(entrando)
signal cambio_numero_meteoritos(numero)
##HUD
signal actualizar_tiempo(tiempo_restante)
signal cambio_energia_laser(energia_max, energia_actual)
signal ocultar_energia_laser()
signal cambio_energia_escudo(energia_max, energia_actual)
signal ocultar_energia_escudo()
