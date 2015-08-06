package select.app

class Inscricao {
	
	int id
	Date data
	double nota
	boolean confirmado
	Pessoa pessoa
	Oferta oferta	
	Sala sala

	Inscricao(Date data, double nota, boolean confirmado, Oferta oferta, Pessoa pessoa, Sala sala) {
		this()
		this.data = data
		this.nota = nota
		this.confirmado = confirmado
		this.oferta = oferta
		this.pessoa = pessoa
		this.sala = sala
	}
	
    static constraints = {
		id(nullable:true, blank:true)
		pessoa(unique: ['oferta'])
		nota(nullable:true, blank:true)
		sala(nullable:true, blank:true)
		data(nullable:true, blank:true)
    }
}
