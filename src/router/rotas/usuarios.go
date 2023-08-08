package rotas

import (
	"api/src/controllers"
)

var rotasUsuarios = []Rota{
	{
		URI:                "/usuarios",
		Metodo:             "POST",
		Funcao:             controllers.CriarUsuario,
		RequerAutenticacao: false,
	},
	{
		URI:                "/usuarios",
		Metodo:             "GET",
		Funcao:             controllers.BuscarUsuarios,
		RequerAutenticacao: false,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "GET",
		Funcao:             controllers.BuscarUsuario,
		RequerAutenticacao: false,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "PUT",
		Funcao:             controllers.AtualizarUsuario,
		RequerAutenticacao: false,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "DELETE",
		Funcao:             controllers.DeletarUsuario,
		RequerAutenticacao: false,
	},
}
