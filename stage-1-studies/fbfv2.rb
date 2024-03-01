# versao refatorada do outro código
# códigos de retorno: 1 = fbf, 2 = não é fbf, pois fbf não pode ter duas proposições seguidas sem nenhum conectivo entre elas, 3 = não é fbf, pois fbf não pode
# ser finalizada com um conectivo, 4 = não é fbf, pois fbf não pode ter dois conectivos de conjunção, disjunção, implicação ou bi-implicação seguidos,
# 5 = não é fbf, pois fbf não pode começar com um conectivo de conjunção, disjunção, implicação ou bi-implicação.

# alfabeto
CONJUNCAO = '^'
DISJUNCAO = '|'
CONDICIONAL = '>'
BICONDICIONAL = '<'
NEGACAO = '!'
PROPOSICOES = ['P', 'Q', 'R', 'S', 'T']
# variavel de armengue
$i = 0

def fbfChecker(formula)
    # puts formula # debug
    if PROPOSICOES.any?(formula[0])
        $i += 1
        if formula.length == 1
            return 1
        end
        if PROPOSICOES.any?(formula[-1])
            if formula[1] == CONJUNCAO || formula[1] == DISJUNCAO || formula[1] == CONDICIONAL || formula[1] == BICONDICIONAL
                if formula[2] == CONJUNCAO || formula[2] == DISJUNCAO || formula[2] == CONDICIONAL || formula[2] == BICONDICIONAL
                    return 4
                else
                    fbfChecker(formula[1..-1])
                end
            else
                return 2
            end
        else
            return 3
        end
    else
        if $i == 0
            if formula[0] == NEGACAO
                $i += 1
                fbfChecker(formula[1..-1])
            else
                return 5
            end
        else
            if formula[1] == CONJUNCAO || formula[1] == DISJUNCAO || formula[1] == CONDICIONAL || formula[1] == BICONDICIONAL
                return 0
            else
                fbfChecker(formula[1..-1])
            end
        end
    end
end
def resultHandler(result)
    puts result
    case result
    when 1
        puts 'fbf.'
    when 2
        puts 'não é fbf, pois fbf não pode ter duas proposições seguidas sem nenhum conectivo entre elas.'
    when 3
        puts 'não é fbf, pois fbf não pode ser finalizada com um conectivo.'
    when 4
        puts 'não é fbf, pois fbf não pode ter dois conectivos de conjunção, disjunção, implicação ou bi-implicação seguidos.'
    when 5
        puts 'não é fbf, pois fbf não pode começar com um conectivo de conjunção, disjunção, implicação ou bi-implicação.'
    end
end

puts 'Insira a formula que voce deseja avaliar:'
formula = gets.chomp
resultHandler(fbfChecker(formula))