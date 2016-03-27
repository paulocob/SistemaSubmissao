package submitleda

class Submissao {
    int submissaoId
    int roteiroId
    int alunoId
    Date dataEnvio
    static belongsTo = Aluno
    static belongsTo = Roteiro
    static hasMany = [roteiros:Roteiro]
    static constraints = {
    }
}
