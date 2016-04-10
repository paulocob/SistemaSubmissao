package submitleda

class Aluno {
    String nome
    int matricula
    static belongsTo = Turma
    static hasMany = [submissoes:Submissao] 
    static constraints = {
    }
	
	static mapping = {
		table 'aluno'
		version false
		id column: 'id_aluno', insertable: false, updateable: false
		nome column: 'nome'
		
	}
}
