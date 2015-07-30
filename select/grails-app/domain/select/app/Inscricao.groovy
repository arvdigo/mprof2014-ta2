package select.app

class Inscricao {
	
	Date data
	double nota
	boolean confirmado
	
	Oferta oferta
	Pessoa candidato
	Sala sala

	Inscricao(Date data, double nota, boolean confirmado, Oferta oferta, Pessoa candidato, Sala sala) {
		this()
		this.data = data
		this.nota = nota
		this.confirmado = confirmado
		this.oferta = oferta
		this.candidato = candidato
		this.sala = sala
	}
	
    static constraints = {
    }
}
