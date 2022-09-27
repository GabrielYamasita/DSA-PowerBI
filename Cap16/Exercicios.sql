/*Exercicio 1:*/

/*select * from cap16."TB_FUNC";*/

select round(avg(idade)) as media_idade, numero_filhos, grau_instrucao 
from cap16."TB_FUNC"
where reg_procedencia = 'capital' 
	and estado_civil = 'casado'
	and salario_hora > (select avg(salario_hora) from cap16."TB_FUNC")
group by numero_filhos, grau_instrucao
order by media_idade desc;

/*Exercicio 2:*/

select * from cap16."TB_FUNC" where numero_filhos = '2';

/*Exercicio 3:*/

select * from cap16."TB_FUNC";
select * from cap16."TB_ENDERECO";

select cap16."TB_ENDERECO".estado as estado, round(avg(salario_hora)) as media_salario
	from cap16."TB_FUNC" join cap16."TB_ENDERECO"
	on cap16."TB_FUNC".id = cap16."TB_ENDERECO".id_func
group by cap16."TB_ENDERECO".estado;

select round(avg(f.salario_hora)), e.estado
from cap16."TB_FUNC" f, cap16."TB_ENDERECO" e
where f.id = e.id_func
group by e.estado;

