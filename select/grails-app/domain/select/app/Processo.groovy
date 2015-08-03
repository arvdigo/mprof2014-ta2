package select.app

class Processo {
	
	int id
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
		id(nullable:true, blank:true)
		data_final(nullable:true, blank:true)
    }
}
