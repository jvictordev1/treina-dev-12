LEAVE = 0

def welcome()
  puts ('Bem-vindo ao Cookbook, sua rede social de receitas.')
end
def menu()
  puts ("Escolha uma opção: \n1 - Cadastrar uma receita \n2 - Ver todas as receitas\n3 - Procurar receita \n#{LEAVE} - Sair")
  return gets.to_i()
end
def create_recipe()
  puts ('Insira o nome da receita:')
  name = gets.chomp()
  puts ('Insira a classificação da receita: ')
  classification = gets.chomp()
  puts ('Receita cadastrada com sucesso!')
  puts
  return {name: name, classification: classification}
end
def show_recipes(recipes)
  puts ('Receitas cadastradas:')
  recipes.each() do |recipe|
    puts("#{recipe[:name]} - #{recipe[:classification].upcase()}")
  end
  if recipes.empty?()
    puts ('Nenhuma receita cadastrada.')
  end
  puts
end
def search_recipe(recipes)
  if recipes.empty?()
    puts ('Nenhuma receita cadastrada.')
  else
    puts ('Digite o nome da receita que deseja procurar:')
    search = gets.chomp()
    if recipes.any? { |recipe| recipe[:name] == search }
      result = recipes.find { |recipe| recipe[:name] == search }
      puts ("Receita encontrada: ")
      puts("#{result[:name]} - #{result[:classification].upcase()}")
    else
      puts ('Receita não encontrada.')
    end
  end
  puts
end

welcome()
recipes = []
option = 1

while option != LEAVE do
  option = menu()
  if option == 1
    recipes << create_recipe()
  elsif option == 2
    show_recipes(recipes)
  elsif option == 3
    search_recipe(recipes)
  elsif option == LEAVE
    puts ('Obrigado por usar o Cookbook!')
    puts
  else
    puts ('Opção inválida')
    puts
  end
end
