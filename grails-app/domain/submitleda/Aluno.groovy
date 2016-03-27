package submitleda

class Aluno {
    String nome
    String matricula
    int turmaId
    static belongsTo = Turma
    static hasMany = [submissoes:Submissao] 
    static constraints = {
    }
}
