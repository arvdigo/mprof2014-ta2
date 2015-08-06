package select.app

class Curso {
	
	String nome;
	String nivel;

	static hasMany = [ofertas:Oferta]
	
	Curso(String nome, String nivel) {
		this()
		this.nome = nome
		this.nivel = nivel
	}
	
    static constraints = {
		nome(nullable:false, blank:false)
		nivel(nullable:false, blank:false)
    }
}
