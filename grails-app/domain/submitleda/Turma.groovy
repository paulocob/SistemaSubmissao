package submitleda
class Turma {
    String nomeDaTurma
    String periodo
    String professor
    int turmaId
    static hasMany = [alunos:Aluno]
    static hasMany = [roteiro:Roteiro]
    static constraints = {    }
}
