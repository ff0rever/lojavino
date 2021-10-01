select * 
from db_lojaVino.Vinicola
INNER JOIN  db_lojaVino.Vinho
on Vinho.codVinicola = Vinicola.codVinicola
inner join db_lojaVino.Regiao
on Vinicola.codRegiao = Regiao.codRegiao;

