# XXXandr84_infra
XXXandr84 Infra repository
bastion_IP = 158.160.124.211
someinternalhost_IP = 10.128.0.31
#Домашнее задание:
#Первая виртальная машина:
#name: bastion
#username: appuser
#IP: 10.128.0.31
#bastion_IP = 158.160.119.138
#Вторая виртальныя машина:

#name: someinternalhost
#username: appuser
#someinternalhost_IP = 10.128.0.31
#Public IP: no

#Самостоятельное  задание:

#1) Подключение к косту в одной строке:
#ssh -J appuser@158.160.119.138 appuser@10.128.0.31 -i ~/.ssh/id_ed25519

#2) Подключение из консоли по алиасу someinterhost:
#ssh -J appuser@158.160.119.138 appuser@someinternalhost -i ~/.ssh/id_ed25519

#отредактировал файл /etc/@resolv.conf
#10.128.0.22  someinternalhost



#Установил  Pritunl
#Настроил сервер
#Создал пользователя, скачал файл настроек подключения и проверил подключение.
#
#
#Домашнее задание
#Деплой тестового приложениā
##
testapp_IP = 158.160.125.191
testapp_port = 9292
# Хост работат ip 158.160.125.191 port 9292 tcp
#
# С помощью скриптов установил mongodb и ruby2.3
# Эти скрипты положил в корень репозитория и добавил атрибут выполнения
#
#
#
#ā startup   script
# В CLI надо добавить строку.
# Необходимо добавить user-data=startup.sh
#В этом скрипте прописать все команды.
#
