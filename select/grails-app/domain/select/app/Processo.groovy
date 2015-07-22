package select.app

class Processo {
	
	String descricao
	String edital
	int ano
	Date data_inicial
	Date data_final

	static hasMany = [ofertas:Oferta]
	
    static constraints = {
    }
}
