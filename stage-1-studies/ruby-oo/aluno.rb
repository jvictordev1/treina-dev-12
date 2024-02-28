class Aluno
  attr_accessor :nome, :matricula, :idade, :telefone
  def initialize(nome, matricula, idade, telefone) #construtor
    @nome = nome
    @matricula = matricula
    @idade = idade
    @telefone = telefone
  end
end
