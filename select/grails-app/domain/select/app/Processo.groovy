package select.app

class Processo {
	
	String descricao
	String edital
	int ano
	Date data_inicial
	Date data_final

	static hasMany = [ofertas:Oferta]
	
	Processo(String descricao, String edital, int ano, Date data_inicial, Date data_final) {
		this()
		this.descricao
		this.edital
		this.ano
		this.data_inicial
		this.data_final
	}
	
    static constraints = {
		data_final(nullable:true, blank:true)
    }
}
