package select.app

class Pessoa {
	
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
	int numero
	String estado_civil
	String telefone
	Date data_nascimento
	String nacionalidade
	String email
	String sexo
	
	Usuario usuario
	
	static hasMany = [inscricoes:Inscricao]
	
	Pessoa(String cpf, String nome,	String nome_mae, String rg,	String cep,	String logradouro,
		String cidade, String bairro, String estado, String complemento, int numero, 
		String estado_civil, String telefone, Date data_nascimento, String nacionalidade, 
		String email,	String sexo, Usuario usuario) 
	{
		this()		
		this.cpf = cpf
		this.nome = nome
		this.nome_mae = nome_mae
		this.rg = rg
		this.cep = cep
		this.logradouro = logradouro
		this.cidade = cidade
		this.bairro = bairro
		this.estado = estado
		this.complemento = complemento
		this.numero = numero
		this.estado_civil = estado_civil		
		this.telefone = telefone
		this.data_nascimento = data_nascimento
		this.nacionalidade = nacionalidade
		this.email = email
		this.sexo = sexo
		this.usuario = usuario
	}
	
	static constraints = {
		cpf(nullable:false, blank:false)
		nome(nullable:false, blank:false)
		nome_mae(nullable:false, blank:false)
		rg(nullable:false, blank:false)
		logradouro(nullable:false, blank:false)
		cidade(nullable:false, blank:false)
		estado(nullable:false, blank:false)
		cep(nullable:false, blank:false)
		complemento(nullable:true, blank:true)
		numero(nullable:true, blank:true)
		bairro(nullable:false, blank:false)
		estado_civil(nullable:false, blank:false)
		telefone(nullable:true, blank:true)
		data_nascimento(nullable:false, blank:false)
		nacionalidade(nullable:false, blank:false)
		email(nullable:false, blank:false)
		sexo(nullable:false, blank:false)
		usuario(nullable:true, blank:true)
    }
}
