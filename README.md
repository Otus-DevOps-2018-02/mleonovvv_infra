# mleonovvv_infra
mleonovvv Infra repository

### Homework-4. cloud-bastion

Реквизиты для подключения к bastion
```
bastion_IP = 35.204.29.223
someinternalhost_IP = 10.142.0.2
```
#### Подключение к someinternalhost в одну строку
Настроить SSH Forwarding на вашей локальной машине:
`ssh-add -L`

Добавить приватный ключ в ssh агент авторизации:
`ssh-add ~/.ssh/id_rsa.pub`

Выполнить команду:
`ssh -o ProxyCommand='ssh bastion_ip -W %h:%p' someinternalhost_ip`

#### Подключение к someinternalhost через алиас командой `ssh someinternalhost`
Добавить в файл:
`~/.ssh/config`
конфигурацию подключения:
```
Host someinternalhost
  User ssh_пользовавтель
  Port someinternalhost_порт
  HostName someinternalhost_IP
  ProxyCommand ssh bastion_IP nc %h %p
```
Выполнить команду: `ssh someinternalhost`
