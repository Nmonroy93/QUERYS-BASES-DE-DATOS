declare  @yourtable table 
    ([Id] int, [Value] decimal(18,6), [ColumnName] varchar(13),nombre2 varchar(13))
;
    
INSERT INTO @yourtable
    ([Id], [Value], [ColumnName],[nombre2])
VALUES
    (1, '55', 'FirstName','prueba1'),
    (2, '2.4', 'Amount','prueba2'),
    (3, '1.2', 'PostalCode','prueba1'),
    (4, '1.2', 'LastName','prueba2'),
    (5, '1.2', 'AccountNumber','prueba1'),
	 (6, '4.2', 'AccountNumber','prueba3'),
	 (7, '55', 'FirstName','prueba3')
;


select Firstname, Amount, PostalCode, LastName, AccountNumber,nombre2
from
(
  select value, columnname,nombre2
  from @yourtable
) d
pivot
(
  sum(value)
  for columnname in (Firstname, Amount, PostalCode, LastName, AccountNumber)
) piv;