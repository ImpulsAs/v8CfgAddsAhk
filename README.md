﻿v8CfgAddsAhk
============
Набор скриптов для автоматизации ряда действий в конфигураторе.

Домашняя страница автора: http://itpath.ru

Набор скриптов с использованием Autohotkey позволяет упросить работу в конфигураторе. Часть функционала дублирует возможности снегопата/турбоконфа, часть уникальна.
Возможности конфигуратора расширяются за счет автоматического вызова хоткеев плафтормы/операционной системы. Никаких внедрений в процессы, модификации файлов платформы/ОС не происходит.

Теперь не требуется регистрация каких-либо dll, в поставку входит OneScript

Если кто желает присоединиться к разработке / просмотреть историю изменений / скачать последнюю версию - добро пожаловать:
https://github.com/ret-Phoenix/v8CfgAddsAhk

Важно: имеется возможность перенастроить горячие клавиши, для этого редактируется файл v8CfgAdds.ahk

Реализованные функции:

Работа с метаданными:
- Навигация по метаданным: {ctrl + shift +j}
- Навигация по входящим в объект типам: {ctrl + j}
- Поиск метаданных по имени: {Ctrl+k}

Работа с методами:
- Вызов списка методов: {ctrl +1}
- Переход в начало метода: {Ctrl+b}
- Переход в конец метода: {Ctrl+e}
- Препроцессор метода: {Alt+7}
- Переход в процедуру: {ctrl+enter}
- Возврат на предыдущую позицию: {Alt,-}
- Показать имя метода: {Win + N}

Прочие операции с текстом:
- Поиск с рег.выражениями: {Alt+f}
- Поиск с рег.выражениями (результат последнего поиска): {Alt+r}
- Выбор ранее набранных слов + Выбор заранее заготовленных слов\фраз (файл words.txt в корне директории скриптов): {ctrl+w}
- Переход по областям: {Ctrl+2}
- Закоментировать строку: {ctrl + / (ctrl + .)}
- Развернуть модуль: {ctrl+i}
- Удаление строки: {Ctrl+y}
- Авторские комментарии:
	- блок добавлен: {alt+a}
	- блок изменен: {alt+e}
	- блок удален: {alt+d}
- Cимвол '<': {Ctrl-,}
- Cимвол '>': {Ctrl-.}
- Cимвол '|': {Ctrl-\}
- Cимвол '&': {Ctrl-&}
- Cимвол '[': {Alt-[}
- Cимвол ']': {Alt-]}
- Копирование текущей строки/ выделенного блока и вставка в следующей строке: {Ctrl+d}
- Добавление ссылки на основной реквизит в модуле (преобразование модуля формы из обычных форм в управляемые): {Alt+h}
- Генератор кода для объектов метаданных (требуется предварительная генерация файла структуры обработкой v8CfgAddsAhk\ext\ПолучениеСтруктуры.epf): {Alt+g}
- Выделение в верхний регистр
- Выделение в нижний регистр
- Выделение в нормальный регистр
- Выравнять по равно
- Выравнять по первой запятой
- Выравнять по выбранному значению
- Очистить модуль (убирает комментарии (исключения в скрипте), лишние пустые строки (оставляет только 1 пустую), убирает пробелы в конце строк)
- Убрать пробелы на конце строк
- Установка/Удаление '|'
- Показать последний список выбора {shift + alt + r}
- Обрамление выделенного текста конструкциями:
	- Если ... Тогда
	- Пока .. Цикл
	- Для По Цикл
	- Для каждого Из Цикл
	- Попытка .. Исключение
	- Область
- Автозамена
	Переменная ++
	Переменная +=
	Переменная --
	Переменная -=
- Перейти к началу слова в составной строке: Shift + Alt + Left	
- Перейти к концу слова в составной строке: Shift + Alt + Right
- Передвинуть строку вверх: {Alt + Up}
- Передвинуть строку вниз: {Alt + Down}

Прочие скрипты:
- Открытие внешних отчетов/обработок, файлов конфигурации: {Ctrl + 3}
- Менеджер скриптов (обработка выделенного блока, автоматическое добавление скриптов из папки auto): {Ctrl + shift + m}:
- Пример работы с меню {Win + X}:
	- Быстрый выбор:
		- КонецЕсли;
		- КонецЦикла;
		- КонецПроцедуры;
		- КонецФункции
	- Выравнивание выделения по знаку равно
 
Новое 2017/05/04
- Перейти к началу слова в составной строке: Shift + Alt + Left	
- Перейти к концу слова в составной строке: Shift + Alt + Right
- Передвинуть строку вверх: {Alt + Up}
- Передвинуть строку вниз: {Alt + Down}
- Показать имя метода: {Win + N}
- Копировать выделенный блок/текущую строку по {Ctrl+d}

Новое 2016/06/15
- Полная реструктуризация скриптов (разложил по папочкам)
- Обрамление выделенного текста конструкциями - добавил Область
- Автозамена:
	- Переменная ++
	- Переменная +=
	- Переменная --
	- Переменная -=
- Переписаны с JS на 1script:
	- Добавить/Удалить перенос строк
	- Авторские комментарии
	- Навигация по модулю
		- Список методов
		- Спивок областей
		- Переход в начало метода
		- Переход в конец метода
		- Поиск с рег.выражениями
		- Внешние файлы (ускорена работа)
		- Менеджер скриптов (доступны обе версии, для 1script надо побороть появление консольного окна)
- Показать последний список выбора {shift + alt + r}
- Пример работы с меню {Win + X}:
	- Быстрый выбор:
		- КонецЕсли;
		- КонецЦикла;
		- КонецПроцедуры;
		- КонецФункции
	- Выравнивание выделения по знаку равно

Новое 2016/06/10
- Автоматический поиск скриптов в папке auto (найденные скрипты вызываются через менеджер скриптов)
- Обрамление выделенного текста конструкциями:
- Если ... Тогда
- Пока .. Цикл
- Для По Цикл
- Для каждого Из Цикл
- Попытка .. Исключение

Новое 2016/06/08
- Стабилизировал навигацию по метаданным.
- Выделение в верхний регистр
- Выделение в нижний регистр
- Выделение в нормальный регистр
- Выравнять по равно
- Выравнять по первой запятой
- Выравнять по выбранному значению
- Очистить модуль (убирает комментарии (исключения в скрипте), лишние пустые строки (оставляет только 1 пустую), убирает пробелы в конце строк)
- Убрать пробелы на конце строк
- Пример испльзования других скриптовых движков (Python, PHP, 1Script)

Новое 2016/06/07
- Навигация по метаданным: {ctrl + shift +j}
- Навигация по входящим в объект типам: {ctrl + j}

Новое 2016/06/06
- Убрана привязка к svcsvs.dll. Выбор из списка осуществляется через спец.приложение на C#: SelectValueSharp.exe.

Новое 2016/05/20
- Переход в начало метода: {Ctrl+b}
- Переход в конец метода: {Ctrl+e}
- Переход по областям: {Ctrl+2}
- Поиск метаданных по имени: {Alt+j}
- Cимвол '&': {Ctrl-&}
- Cимвол '[': {Alt-[}
- Cимвол ']': {Alt-]}


Установка
---
Установить Autohotkey (http://www.autohotkey.com/)

Запуск
---
Необходимо преключиться на Eng раскадку (хоткеи написаны без скан кодов и аналогов на Rus раскладке)
v8CfgAddsAhk\v8CfgAdds.ahk (Основной набор скриптов)
v8CfgAddsAhk\continueRow.ahk (Операции по переносу комментариев, строк). Автор ADirks
 
При желании можно сделать exe файл, инструмент включен в Autohotkey.

Как это работает
---
При помощи Autohotkey назначаются управляющие сочитания клавиш (хоткеи). На языке Autohotkey описываются действия посылаемые платформе: оправляются нажатия клавиш, получается текст из буфера, читаются и записываются файлы.

Разберем работу скриптов на основе вызова списка методов (процедур/функций):
1. Получаем текст модуля (шлем Ctrl+A и Ctrl+ins)
2. Записываем полученный в буфер обмена текст в служебный файл (tmp\module.1s)
3. Запускаем скрипт парсинга модуля
4. Полученный список методов записываем во временный файл
5. Запускаем приложение выбора из списка: SelectValueSharp
6. Получаем номер строки выбранной функции (указывается в списке выбора перед названием метода) и возвращаем в ahk
7. AHK вызывает хоткей перехода к строке (Ctrl + G) и вставляет номер строки, полученный при выборе метода, подтверждает переход к строке

Для обмена между скриптами текстом используются текстовые файлы. Скрипты читают файл источник, обрабатывают и перезаписывают файл, который потом считывается ahk в буфер обмена и вставляется стандартным способом (Ctrl + V).
Используя менеджер скриптов можно обрабатывать выделенный фрагмент кода. При использовании менеджера текст берется в буфер, обрабатывается выбранным скриптом и не снимая выделения вставляется результат. 
Скрипты находящиеся в папке auto добавляются в список выбора менеджера, при этом подразумевается что никаких входящих параметров скриптам передевать не надо. Если требуется организовать выбор или ввод данных для автоскрипта используется внешнее приложение, в поставку входит пример: auto\ОбрамлениеКода.os. Выбор обрамления происходит вызовом приложения SelectValueSharp.
К автоматически добавляемым относятся файлы с раширением: os, js