package submitleda

import java.sql.Time

class Roteiro {
    String titulo
    Date dataNormal
	Time horaNormal
    static belongsTo = Turma
    static hasMany = [submissao:Submissao,turmas:Turma]
    
	static constraints = {
		titulo maxSize : 30, nullable : false
		
	}
	
	static mapping = {
		table 'roteiro'
		version false
		id column: 'id_roteiro', insertable: false, updateable: false
		nome column: 'titulo'
		
	}
}
