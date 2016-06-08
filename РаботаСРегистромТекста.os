﻿Процедура Выполнить()
	Парамеры = АргументыКоманднойСтроки;
	
	ИмяФайла = "tmp\module.txt";
	
	Если Парамеры.Количество() = 1 Тогда
		ПараметрОбработки = АргументыКоманднойСтроки[0];
		
		Текст = Новый ЧтениеТекста(ИмяФайла, КодировкаТекста.ANSI);
		Данные = Текст.Прочитать();
		Текст.Закрыть();
 	
		Если НРег(ПараметрОбработки) = "up" Тогда
			Данные = ВРег(Данные);
 		ИначеЕсли НРег(ПараметрОбработки) = "down" Тогда
			Данные = НРег(Данные);
 		ИначеЕсли НРег(ПараметрОбработки) = "normal" Тогда
			ПервыйСимвол = ВРег(Сред(НРег(Данные),0,1));
			Данные = ПервыйСимвол + Сред(НРег(Данные),2); 
		КонецЕсли;
	
	    Текст = Новый ЗаписьТекста(ИмяФайла, КодировкаТекста.ANSI); 
		Текст.Записать(Данные); 
	 	Текст.Закрыть();
	
	КонецЕсли;

КонецПроцедуры

Выполнить();