function testeArch()
modelArch = readfis('decideArch.fis');

continua = 's';


while (continua == 's')
    Desempenho = input('Qual o tempo de resposta [1 - 14]segundos : ');
    Escalabilidade = input('Qual a escalabilidade [1 - 75]usuários : ');
    Complexibilidade = input('Qual a complexibilidade [1 - 65]valor médio de complexibilidade siclomática : ');
    Falhas = input('Qual a quantidade de erros por hora entre [1 - 90000] :');
    Custo = input('Qual o custo entre [20000 - 10000000] :');

    % defuzzyficando
    result = evalfis(modelArch, [Desempenho, Escalabilidade, Complexibilidade, Falhas, Custo]);

    display('Nota entre [0 - 10] da usabilidade dos métodos :');
    display(result);
    if(result >= 0 && result <= 3)
        display('Péssimo');
    end
    if(result > 3 && result <= 5)
        display('Aceitável');
    end
    if(result > 5 && result <= 7)
        display('Médio');
    end
    if(result > 7 && result <= 10)
        display('Bom');
    end
    if(result < 0)
        display('Impossível');
    end
    

    continua = input('Continua ? (s/n) : ','s');
end
