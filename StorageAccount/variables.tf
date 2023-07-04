variable "rgname" {
	type = string
    default="tf-lab"
    description = "Nombre del Grupo de Recursos"
}
variable "location" {
	type = string
    default="West Europe"
    description = "Localización del recurso"
}
variable "saname" {
    type = string
    default="primerasa" 
	description = "Nombre de la Cuenta de Almacenamiento"
}