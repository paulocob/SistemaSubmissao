package submitleda

class Submissao {
  
    Date dataEnvio
    Roteiro roteiro
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
