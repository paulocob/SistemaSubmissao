package submitleda
class Turma {
    String nomeDaTurma
    String periodo
    String professor
    int turmaId
    static hasMany = [roteiro:Roteiro,alunos:Aluno]
    static constraints = {    }
}
