package submitleda

import java.sql.Time

class Submissao {
  
    Date dataEnvio
	Time horaEnvio
    Roteiro roteiro
	String arquivo
    static belongsTo = [aluno: Aluno]
	
    static constraints = {
    }
	
	static mapping = {
		table 'submissao'
		version false
		id column: 'id_submissao', insertable: false, updateable: false
		nome column: 'dataEnvio'
		
		
	}
	
}
