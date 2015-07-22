package select.app

class Curso {
	
	String nome;
	String nivel;

	static hasMany = [ofertas:Oferta]
	
    static constraints = {
		nome(nullable:false, blank:false)
		nivel(nullable:false, blank:false)
    }
}
