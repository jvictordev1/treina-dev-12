class Funcionario
    attr_accessor :nome, :codigoDeFuncionario
    attr_reader :ferias, :dataInicioFerias, :dataFimFerias
    def initialize(nome, codigoDeFuncionario) #construtor
        @nome = nome
        @codigoDeFuncionario = codigoDeFuncionario
        @ferias = false
        @dataInicioFerias = nil
        @dataFimFerias = nil
    end
    def iniciarFerias()
        if @ferias == true
            puts "Funcionário já está de férias"
            return
        end
        @ferias = true
        @dataInicioFerias = Time.now()
    end
    def encerrarFerias()
        if @ferias == false
            puts "Funcionário não está de férias"
            return
        end
        @ferias = false
        @dataFimFerias = Time.now()
    end
    def imprime_dados()
        puts "Nome: #{@nome}"
        puts "Código de Funcionário: #{@codigoDeFuncionario}"
        puts "Férias: #{@ferias}"
        puts "Data de Início das Férias: #{@dataInicioFerias}"
        puts "Data de Fim das Férias: #{@dataFimFerias}"
    end
end