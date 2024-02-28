students = ['André' , 'Luiz', 'Pedro', 'João']
grades  = [5, 10, 7, 8]
puts ("#{students[0]} tirou nota #{grades[0]}")
puts ("#{students[1]} tirou nota #{grades[1]}")
puts ("#{students[2]} tirou nota #{grades[2]}")
puts ("#{students[3]} tirou nota #{grades[3]}")
puts ('Corrigindo notas...')
grades[1] = 9
students << 'Paulo'
grades << 7.5
puts ("#{students[0]} tirou nota #{grades[0]}")
puts ("#{students[1]} tirou nota #{grades[1]}")
puts ("#{students[2]} tirou nota #{grades[2]}")
puts ("#{students[3]} tirou nota #{grades[3]}")
puts ("#{students[4]} tirou nota #{grades[4]}")
puts ("Esta turma possui #{students.length()} alunos")
