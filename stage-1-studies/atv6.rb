def imprime_aluno (al)
  al.each() do |aluno|
    if aluno[:grade] > 5
      puts ("#{aluno[:name]} foi aprovado(a) com louvor em #{aluno[:subject]}!")
    else
      puts ("#{aluno[:name]} foi reprovado(a) em #{aluno[:subject]}!")
    end
  end
end

alunos  = []
option = 's'
while option == 's' do
  puts ('Digite o nome do aluno:')
  name = gets.chomp()
  puts ('Digite a nota do aluno:')
  grade = gets.to_f()
  puts ('Digite a disciplina do aluno:')
  subject = gets.chomp()
  alunos << {name: name, grade: grade, subject: subject}
  puts ('Deseja adicionar mais um aluno? (s/n)')
  option = gets.chomp()
end

imprime_aluno(alunos)
