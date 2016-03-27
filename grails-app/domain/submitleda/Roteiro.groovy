package submitleda

class Roteiro {
    String titulo
    int roteiroId
    int turmaId
    Date dataNormal
    static hasMany = [turmas:Turma]
    static belongsTo = Turma
    static hasMany = [submissao:Submissao]
    static constraints = {
    }
}
