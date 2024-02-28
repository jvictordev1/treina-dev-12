class Turma
    attr_accessor :nome, :numeroDeSala, :professor
    attr_reader :alunos
    def initialize(nome, numeroDeSala, professor) #construtor
        @nome = nome
        @numeroDeSala = numeroDeSala
        @professor = professor
        @alunos = []
    end
    def adicionar_aluno(aluno)
        @alunos << aluno
    end
    def quantidade_alunos()
        return @alunos.length
    end
end