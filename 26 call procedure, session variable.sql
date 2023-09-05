CALL new_procedure();

-- session variable
SET @var1 := 0;
SET @var2 := 0;

CALL new_procedure2(@var1, @var2);

SELECT @var1, @var2;