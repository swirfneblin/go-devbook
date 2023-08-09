package middlewares

import (
	"api/src/autenticacao"
	"api/src/respostas"
	"fmt"
	"net/http"
)

func Logger(proximaFunc http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		fmt.Printf("\n%s %s %s", r.Method, r.RequestURI, r.Host)
		proximaFunc(w, r)
	}
}

func Autenticar(proximaFunc http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		if erro := autenticacao.ValidarToken(r); erro != nil {
			respostas.Erro(w, http.StatusUnauthorized, erro)
			return
		}
		proximaFunc(w, r)
	}
}
