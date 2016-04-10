package submitleda
class Turma {
    String nomeDaTurma
    String periodo
    String professor
    static hasMany = [roteiro:Roteiro,alunos:Aluno]
    static constraints = {    }
	
	static mapping = {
		table 'turma'
		version false
		id column: 'id_turma', insertable: false, updateable: false
		nome column: 'nomeDaTurma'
		
	}
}
