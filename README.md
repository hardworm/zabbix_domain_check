# zabbix мониторинг срока оплаты домена

Zabbix template, script и config для мониторинга количества дней до окончания действия или окончания оплаты домена(ов) по данным из whois. Минимум зависимостей - **bash, whois, grep**. Разбирает даты whois из строк **paid-till:** или **Registrar Registration Expiration Date** . Работоспособность проверялась на доменах их зоны **.ru**, **.com**, **.org**

Примечание:
1. Не работает на доменах **.tk**
2. Не для массовой проверки - устанете добавлять по 1 домену. Для массовой проверки есть скрипт на perl на просторах интернета.
3. Не тестировалось на огромном количестве других доменных зон.

В качестве примера приведен один из рабочих доменов - элемент данных и тригер для него.
