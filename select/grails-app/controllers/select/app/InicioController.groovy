package select.app

import java.text.SimpleDateFormat
import java.util.Date

class InicioController {
	
	def springSecurityService
		
    def index() {
		
		//@Secured(["ROLE_ADMIN"])
		
		//busca candidato
		def user = springSecurityService.currentUser
		Pessoa pessoa = Pessoa.findByUsuario(user)
		
		//Quantidade de itens no grid
		params.max = 5
		
		//Data de hoje com hora zerada
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		def hoje = format.parse(format.format(new Date()));

	
		//busca inscrições do candidato		
		def countInscricao = Inscricao.countByPessoa(pessoa)
		def inscricao = Inscricao.findAllByPessoa(pessoa,params )
		
		
		//Processos abertos
		def processoAberto = Processo.findAll(params) {
			data_inicial <= hoje && (data_final == null || data_final >= hoje)
		}
		
		def countProcessoAberto = Processo.findAll() {
			data_inicial <= hoje && (data_final == null || data_final >= hoje)
		}.size()
			
		//Processos fechados
		def processoFechado = Processo.findAll(params) {
			data_inicial <= hoje && (data_final != null && data_final < hoje)
		}
		
		def countProcessoFechado = Processo.findAll(params) {
			data_inicial <= hoje && (data_final != null || data_final < hoje)
		}.size()

		render(view:'index', 
			   model:[
						pessoa:pessoa, inscricao:inscricao, countInscricao:countInscricao, 
						processoAberto:processoAberto, countProcessoAberto:countProcessoAberto,
						processoFechado:processoFechado, countProcessoFechado:countProcessoFechado
			         ]
		)
	}
	def sobre() { }
	def equipe() { }
	def info() { }
}
