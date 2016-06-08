﻿Функция ОбработатьФайл(Источник,Приемник)
	Текст = Новый ЧтениеТекста(Источник, КодировкаТекста.ANSI); 
	Стр = "";
	
	Данные = "";
	ПустаяСтрока = Ложь;

	МассивДопустимыхКомментариев = Новый Массив;
	МассивДопустимыхКомментариев.Добавить("//!");
	МассивДопустимыхКомментариев.Добавить("//#");
	
	Пока Стр <> Неопределено Цикл 
	    Стр = Текст.ПрочитатьСтроку();
	
		Если Лев(СокрЛП(Стр),2) = "//" Тогда
			Для Каждого ДопустимоеНачало Из МассивДопустимыхКомментариев Цикл
				Если СтрНачинаетсяС(СокрЛП(Стр), ДопустимоеНачало) = Истина Тогда
					Данные = Данные + Символы.ПС + Стр;
					ПустаяСтрока = Ложь;				
				КонецЕсли;
			КонецЦикла;
			Продолжить;
		ИначеЕсли СокрЛП(Стр) = "" Тогда
			Если ПустаяСтрока = Ложь Тогда
				Данные = Данные + Символы.ПС;
			КонецЕсли;
			ПустаяСтрока = Истина;
		Иначе
			Данные = Данные + Символы.ПС + Стр;
			ПустаяСтрока = Ложь;
		КонецЕсли
		
	КонецЦикла;
	Текст.Закрыть();
 
	РегВыражение = новый РегулярноеВыражение("[ \t]+\r*\n");
	Результат = РегВыражение.Заменить(Данные,Символы.ПС);

    Текст = Новый ЗаписьТекста(Приемник, КодировкаТекста.ANSI); 
	Текст.Записать(Результат); 
 	Текст.Закрыть();
    
	возврат истина;    
КонецФункции

Процедура Выполнить(Параметры)

	ИмяФайла = "tmp\module.txt";
	Если Параметры.Количество() > 0 Тогда
		ИмяФайла = Параметры[0];
	КонецЕсли;
	Приемник = ИмяФайла;
	Если Параметры.Количество() > 1 Тогда
		Приемник = Параметры[1];
	КонецЕсли;


	ОбработатьФайл(ИмяФайла, Приемник);
КонецПроцедуры

Выполнить(АргументыКоманднойСтроки);