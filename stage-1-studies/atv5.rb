puts ('Insira a nota do aluno')
nota = gets.to_f()
case nota
when 0
  puts 'Você tirou zero! Precisa melhorar…'
when 0.1..4.9
  puts 'Reprovado… precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 5.1..9.9
  puts 'Parabéns, você foi aprovado.'
when 10
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
else
  puts 'Nota inválida!'
end
