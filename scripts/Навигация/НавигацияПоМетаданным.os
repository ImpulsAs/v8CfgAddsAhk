Перем Обмен;

Функция ПерейтиКСсылкеВОбъекте(Данные)
	Возврат 0;
КонецФункции // ПерейтиКСсылкеВОбъекте()

Функция ПерейтиКОбъекту(Данные)
	Возврат 0;
КонецФункции

Процедура Выполнить(Параметры)

	Данные = Обмен.ПолучитьТекстИзФайла("tmp\module.txt");

	Если Параметры[0] = "ПерейтиКСсылкеВОбъекте" Тогда
		ПерейтиКСсылкеВОбъекте(Данные);
	ИначеЕсли Параметры[0] = "ПерейтиКОбъекту" Тогда
		ПерейтиКОбъекту(Данные);
	КонецЕсли;
	
КонецПроцедуры

Обмен = ЗагрузитьСценарий("Обмен.os");

//Выполнить(АргументыКоманднойСтроки);

МассивПарамеров = новый Массив;
МассивПарамеров.Добавить("ПерейтиКСсылкеВОбъекте");
//МассивПарамеров.Добавить("c:\work\portable\v8CfgAddsAhk\tmp\new.module.txt");

Выполнить(МассивПарамеров);