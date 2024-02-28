class Professor < Funcionario
    attr_accessor :turma
    def initialize(nome, codigoDeFuncionario, turma) #construtor
        super(nome, codigoDeFuncionario)
        @turma = turma
    end
    def imprime_dados()
        super()
        puts "Turma: #{@turma}"
    end
end