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
	
	static hasMany = [ofertas:Oferta, sala:Sala]	
	
    static constraints = {
		nome(nullable:false, blank:false)	
    }
}
