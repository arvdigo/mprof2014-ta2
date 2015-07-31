package select.app

class Inscricao {
	
	Date data
	double nota
	boolean confirmado
	
	Oferta oferta
	Pessoa pessoa
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
		nota(nullable:true, blank:true)
		sala(nullable:true, blank:true)
    }
}
