# Security Agent Platform — Compatibilidade
## Visão Geral

Este documento descreve os ambientes suportados atualmente pelo Security Agent Platform e os requisitos necessários para execução do agente de auditoria USB.

O projeto foi desenvolvido inicialmente para ambientes Linux, com foco em servidores, estações corporativas e ambientes de infraestrutura.

# Sistemas Operacionais Suportados

### Linux (Suportado)

Distribuições testadas:

- Ubuntu 20.04+

- Ubuntu 22.04+

- Debian 11+

- Debian 12+

Requisitos mínimos:

- Kernel Linux com suporte a USB

- Bash 4+

- systemd (para execução como serviço)

- Permissão de acesso ao dmesg

# Ambientes Não Suportados (Atualmente)

### Windows (Nativo)

O agente não roda nativamente no Windows, pois depende de:

- dmesg

- eventos do kernel Linux

- estrutura de dispositivos /sys

## macOS

Não suportado no momento. O macOS possui um modelo diferente de gerenciamento de dispositivos USB.

## Windows com WSL (Suporte Parcial)

O projeto pode ser executado em ambientes Windows utilizando:

- WSL2 (Windows Subsystem for Linux)

- Ubuntu dentro do WSL

Limitações conhecidas:

- Nem todos os eventos USB do host Windows são expostos ao WSL

- A detecção depende da integração USB do WSL com o host

Uso recomendado apenas para testes e desenvolvimento.

# Requisitos de Execução

Para rodar o agente corretamente, o sistema deve possuir:

- Acesso ao comando dmesg

- Permissão de leitura dos logs do kernel

- Execução com privilégios elevados (root ou sudo)

- Sistema baseado em Linux com suporte a dispositivos USB

# Execução como Serviço

O agente pode ser executado como:

- Script manual

- Serviço do systemd (modo recomendado para produção)

A execução como serviço garante:

- Inicialização automática no boot

- Execução contínua

- Monitoramento pelo systemd

# Roadmap de Compatibilidade

Plataformas planejadas para futuras versões:

- Container Docker (Linux)

- Kubernetes (DaemonSet)

- Integração com cloud (AWS / Azure)

- Integração com SIEM e observabilidade

## Observações Importantes

Este projeto foi desenvolvido com foco em:

-Ambientes corporativos Linux

-Segurança de endpoints

- Auditoria e compliance

- Automação de infraestrutura

Não é um software de usuário final. É um agente de infraestrutura.