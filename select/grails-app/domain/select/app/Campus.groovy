package select.app

class Campus {

	String nome	
	String cep
	String logradouro
	int	numero
	String complemento
	String bairro
	String cidade
	String estado	
	
	// Chaves:
	static hasMany = [ofertas:Oferta, sala:Sala]	
	
	Campus(String nome) {
		this()
		this.nome = nome
	}
	
    static constraints = {
		nome(nullable:false, blank:false)
		cep(nullable:true, blank:true)
		logradouro(nullable:true, blank:true)
		numero(nullable:true, blank:true)
		complemento(nullable:true, blank:true)
		bairro(nullable:true, blank:true)
		cidade(nullable:true, blank:true)
		estado(nullable:true, blank:true)
    }
	
	static mapping = {
		version false
	}
}
