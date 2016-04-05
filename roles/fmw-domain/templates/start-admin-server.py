nmConnect('{{ nodemanager_username }}', '{{ nodemanager_password }}', '{{ nodemanager_listen_address }}', '{{ nodemanager_listen_port }}', '{{ domain_name }}');

nmStart('{{ admin_server_name }}');

nmDisconnect();
