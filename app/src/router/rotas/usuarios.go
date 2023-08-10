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
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "GET",
		Funcao:             controllers.BuscarUsuario,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "PUT",
		Funcao:             controllers.AtualizarUsuario,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}",
		Metodo:             "DELETE",
		Funcao:             controllers.DeletarUsuario,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}/seguir",
		Metodo:             "POST",
		Funcao:             controllers.SeguirUsuario,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}/parar-de-seguir",
		Metodo:             "POST",
		Funcao:             controllers.PararDeSeguirUsuario,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}/seguidores",
		Metodo:             "GET",
		Funcao:             controllers.BuscarSeguidores,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}/seguindo",
		Metodo:             "GET",
		Funcao:             controllers.BuscarSeguindo,
		RequerAutenticacao: true,
	},
	{
		URI:                "/usuarios/{usuarioId}/atualizar-senha",
		Metodo:             "POST",
		Funcao:             controllers.AtualizarSenha,
		RequerAutenticacao: true,
	},
}
