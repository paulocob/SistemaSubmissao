package submitleda
class Turma {
    String nomeDaTurma
    String periodo
    String professor
    static hasMany = [roteiro:Roteiro,alunos:Aluno]
 

	static constraints = {
		nomeDaTurma maxSize : 10, nullable : false
		periodo maxSize : 6, nullable : false
		professor maxSize : 30, nullable : false
	}
	
	static mapping = {
		table 'turma'
		version false
		id column: 'id_turma', insertable: false, updateable: false
		nome column: 'nomeDaTurma'
		
	}
}
