math.randomseed(math.random(2))
print(math.random(4),math.random())



Crystals = {"A", "B", "C", "D", "E", "F"}
Field = {}
FIELD_MAX_SIZE = 10


function init() -- создание поля
	for i = 1, FIELD_MAX_SIZE  do
	    Field[i] = {}
		for j = 1, FIELD_MAX_SIZE do
			Field[i][j] = Crystals[math.random(6)];			
		end
	end
end



function dump() -- вывод поля на экран
    io.write("\t")
	for i = 0, FIELD_MAX_SIZE - 1 do
		io.write(" ", i, " ") -- вывод номеров столбцов
	end
	io.write("\n       ")
	for i = 0, FIELD_MAX_SIZE - 1 do
		io.write("---")
	end
    io.write("\n")
    
	for i = 1, FIELD_MAX_SIZE  do
        io.write("  ", i - 1, " |    ") -- вывод номеров строк
		for j = 1, FIELD_MAX_SIZE do
			io.write(Field[i][j], "  ") -- вывод таблицы
		end
		io.write("\n")
	end
end




init()
dump()

init()
tick() -- выполнение действий на поле
move(from, to) -- выполнение хода игрока
mix() -- перемешивание поля
dump() -- вывод поля на экран


