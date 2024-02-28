alunos2 = [{nome: 'João', nota: 7, disciplina: 'Português'}, {nome: 'Maria', nota: 8, disciplina: 'Matemática'}, {nome: 'José', nota: 4, disciplina: 'Português'}]
for aluno in alunos2
  if aluno[:nota] > 5
    puts ("#{aluno[:nome]} foi aprovado(a) com louvor em #{aluno[:disciplina]}!")
  else
    puts ("#{aluno[:nome]} foi reprovado(a) em #{aluno[:disciplina]}!")
  end
end
