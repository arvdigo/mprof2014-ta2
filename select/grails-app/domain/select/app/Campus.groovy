package select.app

class Campus {

	String nome
	String cep
	String cidade
	String estado
	String endereco
	String complemento
	int	numero
	String bairro
	
	static hasMany = [ofertas:Oferta, sala:Sala]	
	
    static constraints = {
		nome(nullable:false, blank:false)
		cep(nullable:false, blank:false)
		cidade(nullable:false, blank:false)
		estado(nullable:false, blank:false)
		endereco(nullable:false, blank:false)
		complemento(nullable:true, blank:true)
		numero(nullable:true, blank:true)
		bairro(nullable:false, blank:false)		
    }
}
