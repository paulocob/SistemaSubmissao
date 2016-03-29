package submitleda

class Submissao {
    int submissaoId
    int roteiroId
    int alunoId
    Date dataEnvio
    Roteiro roteiro
    static belongsTo = [aluno: Aluno]
    static constraints = {
    }
}
