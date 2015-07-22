package select.app

class Candidato {
	
	String cpf
	String nome	
	String nome_mae
	String rg
	String cep
	String logradouro
	String cidade
	String bairro
	String estado
	String complemento
	String numero
	String estado_civil
	String telefone
	Date data_nascimento
	String cidade_nascimento
	String nacionalidade
	String email
	String sexo
	
	Usuario usuario
	
	static hasMany = [inscricoes:Inscricao]
	
	static constraints = {
		cpf(nullable:false, blank:false)
		nome(nullable:false, blank:false)
		nome_mae(nullable:false, blank:false)
		rg(nullable:false, blank:false)
		logradouro(nullable:false, blank:false)
		cidade(nullable:false, blank:false)
		estado(nullable:false, blank:false)
		cep(nullable:false, blank:false)
		complemento(nullable:false, blank:false)
		numero(nullable:false, blank:false)
		bairro(nullable:false, blank:false)
		estado_civil(nullable:false, blank:false)
		telefone(nullable:false, blank:false)
		data_nascimento(nullable:false, blank:false)
		cidade_nascimento(nullable:false, blank:false)
		nacionalidade(nullable:false, blank:false)
		email(nullable:false, blank:false, email:true)
		sexo(nullable:false, blank:false)
    }
}
