Sistema de classificador pelo método fuzzy, voltado para definir, com base em algumas características de entrada, o quanto é positivo o uso da arquitetura de Microservice.
Desenvolvido em matlab. Detalhes das especificações do projeto a baixo.
Aspectos a serem avaliados:
Variáveis de entrada:
  1º Tempo de resposta\Desempenho 
    - baixo = 0 a 2 segundos
    - médio = 1 a 10 segundos
    - alta = > 10 segundos

  2º Escalabilidade
    - baixo = 10 com
    - médio = 20 a 50
    - alto = > 50

  3º Complexibilidade ==> nível médio de complexidade ciclomática
    - 1-10	Método simples. Baixo risco.
    - 11-20	Método razoavelmente complexo. Moderado risco.
    - 21-50	Método muito complexo. Elevado risco.
    by McCabe book
  
  4º Tolerância a falhas
    - baixo 5.000 a 10.000 por horas.
    - médio 10.000 a 30.000 por horas.
    - alto > 30.000 por horas.
    
  5º Custo
    - baixo = 1kk 
      - 1 médio e o resto ruim
    - médio = 10kk
      - 2 bom e o resto ruim
      - tudo médio
      - 1 bom 2 médio e o resto ruim
    - alto = 50kk
      - 3 bom 1 baixo
      - 2 bom e 2 médio
      
Variáveis de saída:
  1º Microsserviços
    - Escalabilidade
    - Tolerância a falhas
    - Armazenamento - problema
    - Latência 