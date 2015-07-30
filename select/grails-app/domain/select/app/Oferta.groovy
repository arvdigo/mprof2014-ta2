package select.app

class Oferta {

	int vagas
	double valor
	Curso curso
	Campus campus
	Processo processo
	
	Oferta(int vagas, double valor, Campus campus, Processo processo, Curso curso) {
		this()
		this.vagas
		this.valor
		this.curso
		this.campus
		this.processo
	}
	
    static constraints = {
		vagas(nullable:false, blank:false)
		valor(nullable:false, blank:false)
    }
}
