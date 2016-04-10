package submitleda

class Roteiro {
    String titulo
    Date dataNormal
    static belongsTo = Turma
    static hasMany = [submissao:Submissao,turmas:Turma]
    static constraints = {
    }
	
	static mapping = {
		table 'roteiro'
		version false
		id column: 'id_roteiro', insertable: false, updateable: false
		nome column: 'titulo'
		
	}
}
