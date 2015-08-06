import select.app.Campus
import select.app.Curso
import select.app.Inscricao
import select.app.Oferta
import select.app.Permissao;
import select.app.Pessoa
import select.app.Processo
import select.app.Sala
import select.app.Usuario;
import select.app.UsuarioPermissao;

class BootStrap {

    def init = { servletContext ->
		//Criando Usuário:admin, Senha:admin e Permissão:ROLE_ADMIN 
		Permissao adminRole = new Permissao(authority: "ROLE_ADMIN").save(flush:true)
		Usuario admin = new Usuario(username: "admin", password: "admin", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		new UsuarioPermissao(usuario: admin, permissao: adminRole).save(flush:true)
		
		Permissao permissao = new Permissao(authority: "ROLE_CANDIDATO").save(flush:true)
		
		//Cadastro de cursos
		Curso curso01 = new Curso(nome: "Informática", nivel: "TÉCNICO").save(flush:true)
		Curso curso02 = new Curso(nome: "Informática", nivel: "SUPERIOR").save(flush:true)
		Curso curso03 = new Curso(nome: "Agronomia", nivel: "SUPERIOR").save(flush:true)
		Curso curso04 = new Curso(nome: "Meio Ambiente", nivel: "TÉCNICO").save(flush:true)
		
		//Cadastro de processos
		Processo processo01 = new Processo(descricao: "Segundo processo seletivo 2014", edital: "Edital Numero 35/2014", ano:2014 , data_inicial: "2014-06-01" , data_final: "2014-07-01").save(flush:true)
		Processo processo02 = new Processo(descricao: "Primeiro processo seletivo 2014", edital: "Edital Numero 2/2015", ano:2015 , data_inicial: "2015-01-10", data_final: null).save(flush:true)
		Processo processo03 = new Processo(descricao: "IFRS - Processo seletivo complementaro 2015", edital: "Edital Numero 325/2015", ano:2015 , data_inicial: "2015-08-1", data_final: null).save(flush:true)
		
		//Cadastro de Campus
		Campus campus01 = new Campus(nome: "IFNMG - Campus Januária").save(flush:true)		
		Campus campus02 = new Campus(nome: "IFNMG - Campus Montes Claros").save(flush:true)
		Campus campus03 = new Campus(nome: "IFNMG - Campus Pirapora").save(flush:true)
		Campus campus04 = new Campus(nome: "IFRS - Campus Bento Gonçalves").save(flush:true)
		Campus campus05 = new Campus(nome: "IFRS - Campus Feliz").save(flush:true)
		Campus campus06 = new Campus(nome: "IFRS - Campus Porto Alegre").save(flush:true)

		//Cadastro de Oferta
		Oferta oferta01 = new Oferta(vagas: 30, valor: 100, campus: campus01, processo: processo01, curso: curso01).save(flush:true)
		Oferta oferta02 = new Oferta(vagas: 30, valor: 100, campus: campus01, processo: processo01, curso: curso02).save(flush:true)
		Oferta oferta03 = new Oferta(vagas: 30, valor: 100, campus: campus02, processo: processo01, curso: curso01).save(flush:true)
		Oferta oferta04 = new Oferta(vagas: 30, valor: 100, campus: campus01, processo: processo02, curso: curso01).save(flush:true)
		Oferta oferta05 = new Oferta(vagas: 30, valor: 100, campus: campus01, processo: processo02, curso: curso02).save(flush:true)
		Oferta oferta06 = new Oferta(vagas: 30, valor: 100, campus: campus01, processo: processo02, curso: curso03).save(flush:true)
		Oferta oferta07 = new Oferta(vagas: 30, valor: 100, campus: campus04, processo: processo03, curso: curso02).save(flush:true)
		Oferta oferta08 = new Oferta(vagas: 30, valor: 100, campus: campus05, processo: processo03, curso: curso03).save(flush:true)
		Oferta oferta09 = new Oferta(vagas: 30, valor: 100, campus: campus06, processo: processo03, curso: curso04).save(flush:true)

		//Cadastro de Salas
		Sala sala01 = new Sala(descricao: "Sala 01", vagas: 5, campus: campus01).save(flush:true)
		Sala sala02 = new Sala(descricao: "Sala 02", vagas: 5, campus: campus01).save(flush:true)
		Sala sala03 = new Sala(descricao: "Sala 03", vagas: 5, campus: campus01).save(flush:true)
		Sala sala04 = new Sala(descricao: "Sala 04", vagas: 5, campus: campus01).save(flush:true)
		Sala sala05 = new Sala(descricao: "Sala 05", vagas: 5, campus: campus01).save(flush:true)
		Sala sala06 = new Sala(descricao: "Sala 01", vagas: 5, campus: campus02).save(flush:true)
		Sala sala07 = new Sala(descricao: "Sala 02", vagas: 5, campus: campus02).save(flush:true)
		Sala sala08 = new Sala(descricao: "Sala 03", vagas: 5, campus: campus02).save(flush:true)
		Sala sala09 = new Sala(descricao: "Sala 04", vagas: 5, campus: campus02).save(flush:true)
		Sala sala010 = new Sala(descricao: "Sala 05", vagas: 5, campus: campus02).save(flush:true)
		Sala sala011 = new Sala(descricao: "Sala 03", vagas: 10, campus: campus04).save(flush:true)
		Sala sala012 = new Sala(descricao: "Sala 04", vagas: 10, campus: campus05).save(flush:true)
		Sala sala013 = new Sala(descricao: "Sala 05", vagas: 10, campus: campus06).save(flush:true)

		//Cadastro de pessoa	
		Usuario usuario01 = new Usuario(username: "000.000.000-01", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa01 = new Pessoa(cpf: "000.000.000-01", nome: "João 01", nome_mae: "Maria 01", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 1, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao01@gmail.com", sexo: "MASCULINO", usuario:usuario01).save(flush:true)
		new UsuarioPermissao(usuario: usuario01, permissao: permissao).save(flush:true)
		
		Usuario usuario02 = new Usuario(username: "000.000.000-02", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa02 = new Pessoa(cpf: "000.000.000-02", nome: "João 02", nome_mae: "Maria 02", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 2, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao02@gmail.com", sexo: "MASCULINO", usuario:usuario02).save(flush:true)
		new UsuarioPermissao(usuario: usuario02, permissao: permissao).save(flush:true)
		
		Usuario usuario03 = new Usuario(username: "000.000.000-03", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa03 = new Pessoa(cpf: "000.000.000-03", nome: "João 03", nome_mae: "Maria 03", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 3, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao03@gmail.com", sexo: "MASCULINO", usuario:usuario03).save(flush:true)
		new UsuarioPermissao(usuario: usuario03, permissao: permissao).save(flush:true)
		
		Usuario usuario04 = new Usuario(username: "000.000.000-04", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa04 = new Pessoa(cpf: "000.000.000-04", nome: "João 04", nome_mae: "Maria 04", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 4, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao04@gmail.com", sexo: "MASCULINO", usuario:usuario04).save(flush:true)
		new UsuarioPermissao(usuario: usuario04, permissao: permissao).save(flush:true)
		
		Usuario usuario05 = new Usuario(username: "000.000.000-05", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa05 = new Pessoa(cpf: "000.000.000-05", nome: "João 05", nome_mae: "Maria 05", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 5, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao0@gmail.com", sexo: "MASCULINO", usuario:usuario05).save(flush:true)
		new UsuarioPermissao(usuario: usuario05, permissao: permissao).save(flush:true)
		
		Usuario usuario06 = new Usuario(username: "000.000.000-06", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa06 = new Pessoa(cpf: "000.000.000-06", nome: "João 06", nome_mae: "Maria 06", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 6, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao06@gmail.com", sexo: "MASCULINO", usuario:usuario06).save(flush:true)
		new UsuarioPermissao(usuario: usuario06, permissao: permissao).save(flush:true)
		
		Usuario usuario07 = new Usuario(username: "000.000.000-07", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa07 = new Pessoa(cpf: "000.000.000-07", nome: "João 07", nome_mae: "Maria 07", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 7, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao07@gmail.com", sexo: "MASCULINO", usuario:usuario07).save(flush:true)
		new UsuarioPermissao(usuario: usuario07, permissao: permissao).save(flush:true)
		
		Usuario usuario08 = new Usuario(username: "000.000.000-08", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa08 = new Pessoa(cpf: "000.000.000-08", nome: "João 08", nome_mae: "Maria 08", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 8, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao08@gmail.com", sexo: "MASCULINO", usuario:usuario08).save(flush:true)
		new UsuarioPermissao(usuario: usuario08, permissao: permissao).save(flush:true)
		
		Usuario usuario09 = new Usuario(username: "000.000.000-09", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa09 = new Pessoa(cpf: "000.000.000-09", nome: "João 09", nome_mae: "Maria 09", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 9, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao09@gmail.com", sexo: "MASCULINO", usuario:usuario09).save(flush:true)
		new UsuarioPermissao(usuario: usuario09, permissao: permissao).save(flush:true)
		
		Usuario usuario10 = new Usuario(username: "000.000.000-10", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa10 = new Pessoa(cpf: "000.000.000-10", nome: "João 10", nome_mae: "Maria 10", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 10, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao10@gmail.com", sexo: "MASCULINO", usuario:usuario10).save(flush:true)
		new UsuarioPermissao(usuario: usuario10, permissao: permissao).save(flush:true)
		
		Usuario usuario11 = new Usuario(username: "000.000.000-11", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa11 = new Pessoa(cpf: "000.000.000-11", nome: "João 11", nome_mae: "Maria 11", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 11, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao11@gmail.com", sexo: "MASCULINO", usuario:usuario11).save(flush:true)
		new UsuarioPermissao(usuario: usuario11, permissao: permissao).save(flush:true)
		
		Usuario usuario12 = new Usuario(username: "000.000.000-12", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa12 = new Pessoa(cpf: "000.000.000-12", nome: "João 12", nome_mae: "Maria 12", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 12, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao12@gmail.com", sexo: "MASCULINO", usuario:usuario12).save(flush:true)
		new UsuarioPermissao(usuario: usuario12, permissao: permissao).save(flush:true)
		
		Usuario usuario13 = new Usuario(username: "000.000.000-13", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa13 = new Pessoa(cpf: "000.000.000-13", nome: "João 13", nome_mae: "Maria 13", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 13, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao13@gmail.com", sexo: "MASCULINO", usuario:usuario13).save(flush:true)
		new UsuarioPermissao(usuario: usuario13, permissao: permissao).save(flush:true)
		
		Usuario usuario14 = new Usuario(username: "000.000.000-14", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa14 = new Pessoa(cpf: "000.000.000-14", nome: "João 14", nome_mae: "Maria 14", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 14, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao14@gmail.com", sexo: "MASCULINO", usuario:usuario14).save(flush:true)
		new UsuarioPermissao(usuario: usuario14, permissao: permissao).save(flush:true)
		
		Usuario usuario15 = new Usuario(username: "000.000.000-15", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa15 = new Pessoa(cpf: "000.000.000-15", nome: "João 15", nome_mae: "Maria 15", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 15, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao15@gmail.com", sexo: "MASCULINO", usuario:usuario15).save(flush:true)
		new UsuarioPermissao(usuario: usuario15, permissao: permissao).save(flush:true)
		
		Usuario usuario16 = new Usuario(username: "000.000.000-16", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa16 = new Pessoa(cpf: "000.000.000-16", nome: "João 16", nome_mae: "Maria 16", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 16, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao16@gmail.com", sexo: "MASCULINO", usuario:usuario16).save(flush:true)
		new UsuarioPermissao(usuario: usuario16, permissao: permissao).save(flush:true)
		
		Usuario usuario17 = new Usuario(username: "000.000.000-17", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa17 = new Pessoa(cpf: "000.000.000-17", nome: "João 17", nome_mae: "Maria 17", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 17, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao17@gmail.com", sexo: "MASCULINO", usuario:usuario17).save(flush:true)
		new UsuarioPermissao(usuario: usuario17, permissao: permissao).save(flush:true)
		
		Usuario usuario18 = new Usuario(username: "000.000.000-18", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa18 = new Pessoa(cpf: "000.000.000-18", nome: "João 18", nome_mae: "Maria 18", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 18, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao18@gmail.com", sexo: "MASCULINO", usuario:usuario18).save(flush:true)
		new UsuarioPermissao(usuario: usuario18, permissao: permissao).save(flush:true)
		
		Usuario usuario19 = new Usuario(username: "000.000.000-19", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa19 = new Pessoa(cpf: "000.000.000-19", nome: "João 19", nome_mae: "Maria 19", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 19, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao19@gmail.com", sexo: "MASCULINO", usuario:usuario19).save(flush:true)
		new UsuarioPermissao(usuario: usuario19, permissao: permissao).save(flush:true)
		
		Usuario usuario20 = new Usuario(username: "000.000.000-20", password: "123", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		Pessoa pessoa20 = new Pessoa(cpf: "000.000.000-20", nome: "João 20", nome_mae: "Maria 20", rg: "123456789", cep: "39400-112", logradouro: "Rua 01", cidade: "Montes Claros", bairro: "Centro", estado: "MG", complemento: null, numero: 20, estado_civil: "SOLTEIRO", telefone: "(38)3201-1010", data_nascimento:"1990-10-10", nacionalidade: "Brasileiro", email: "joao20@gmail.com", sexo: "MASCULINO", usuario:usuario20).save(flush:true)
		new UsuarioPermissao(usuario: usuario20, permissao: permissao).save(flush:true)
		
		//Cadastro Inscrições
		new Inscricao(data:"2014-06-10", nota: 10, confirmado: true, oferta: oferta01, pessoa: pessoa01, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 10, confirmado: true, oferta: oferta01, pessoa: pessoa02, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 9, confirmado: true, oferta: oferta01, pessoa: pessoa03, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 8, confirmado: true, oferta: oferta01, pessoa: pessoa04, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 8, confirmado: true, oferta: oferta01, pessoa: pessoa05, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 7, confirmado: true, oferta: oferta01, pessoa: pessoa06, sala: sala01).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 6, confirmado: true, oferta: oferta01, pessoa: pessoa07, sala: sala01).save(flush:true)
		
		new Inscricao(data:"2014-06-10", nota: 10, confirmado: true, oferta: oferta03, pessoa: pessoa08, sala: sala06).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 10, confirmado: true, oferta: oferta03, pessoa: pessoa09, sala: sala06).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 9, confirmado: true, oferta: oferta03, pessoa: pessoa10, sala: sala06).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 9, confirmado: true, oferta: oferta03, pessoa: pessoa11, sala: sala06).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 9, confirmado: true, oferta: oferta03, pessoa: pessoa12, sala: sala06).save(flush:true)
		new Inscricao(data:"2014-06-10", nota: 5, confirmado: true, oferta: oferta03, pessoa: pessoa13, sala: sala06).save(flush:true)
		
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa01, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa13, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa14, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa15, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa16, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa17, sala: null).save(flush:true)
		new Inscricao(data:"2015-01-12", nota: 0, confirmado: false, oferta: oferta04, pessoa: pessoa18, sala: null).save(flush:true)
    }
	
	
	
    def destroy = {
    }
}
