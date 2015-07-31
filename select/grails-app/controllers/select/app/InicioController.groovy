package select.app

class InicioController {
	
	def springSecurityService
	
    def index() {
		
		//@Secured(["ROLE_ADMIN"])
		
		//busca candidato
		def user = springSecurityService.currentUser
		Pessoa pessoa = Pessoa.findByUsuario(user)
		
		//busca processos do candidato		
		def countInscricao = Inscricao.countByPessoa(pessoa)
		params.max = 4
		def inscricao = Inscricao.findAllByPessoa(pessoa,params )

		render(view:'index', model:[pessoa:pessoa, inscricao:inscricao, countInscricao:countInscricao])
	}
	def sobre() { }
	def equipe() { }
	def info() { }
}
