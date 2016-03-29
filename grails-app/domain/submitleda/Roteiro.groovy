package submitleda

class Roteiro {
    String titulo
    int roteiroId
    int turmaId
    Date dataNormal
    static belongsTo = Turma
    static hasMany = [submissao:Submissao,turmas:Turma]
    static constraints = {
    }
}
