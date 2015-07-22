package select.app

class Sala {

	String descricao
	Campus campus	
	
	static hasMany = [inscricoes:Inscricao]
	
    static constraints = {
    }
}
