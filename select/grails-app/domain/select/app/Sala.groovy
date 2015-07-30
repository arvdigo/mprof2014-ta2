package select.app

class Sala {

	String descricao
	int	vagas
	Campus campus	
		
	static hasMany = [inscricoes:Inscricao]
	
	Sala(String descricao, int vagas, Campus campus) {
		this()
		this.descricao = descricao
		this.vagas = vagas
		this.campus = campus
	}
	
    static constraints = {
    }
}
