## Empresa 
No cenário empresa foram criadas 4 tabelas 3 relacionadas
as suas entidades verificadas no modelo conceitual 
e a última foi necessária pois era um relacionamento muito 
para muitos ou N:N então se fez necessária a criação de uma
tabela para colocar as informações que não poderia
ser armazenada nem na tabela emprego nem a de projeto então essa quarta
tabela recebeu essas informações.
Além de colocar os atributos,as chaves primárias e as estrangeiras 
houve um  auto-relacionamento onde a chave estrangeira criada 
apontava diretamente para a própria tabela que continha
esse auto-relacionamento de empregado para chefe.
Também foi trazido o Unique uma regra que não 
permitia que um chefe posa por exemplo ser responsável por mais de um 
departamento.
