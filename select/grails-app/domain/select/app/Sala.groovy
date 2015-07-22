package select.app

class Sala {

	String descricao
	int	vagas
	Campus campus	
		
	static hasMany = [inscricoes:Inscricao]
	
    static constraints = {
    }
}
