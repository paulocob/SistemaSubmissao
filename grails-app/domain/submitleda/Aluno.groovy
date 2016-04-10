package submitleda

class Aluno {
    String nome
    int matricula
    static belongsTo = Turma
    static hasMany = [submissoes:Submissao] 
    
	static constraints = {
		nome maxSize : 30, nullable : false
		matricula maxSize : 9, nullable : false
	}
	static mapping = {
		table 'aluno'
		version false
		id column: 'id_aluno', insertable: false, updateable: false
		nome column: 'nome'
		
	}
}
