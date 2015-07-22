package select.app

class Oferta {

	int vagas
	double valor
	Curso curso
	Campus campus
	Processo processo
	
    static constraints = {
		vagas(nullable:false, blank:false)
		valor(nullable:false, blank:false)
    }
}
