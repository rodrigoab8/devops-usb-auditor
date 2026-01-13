Security Agent Platform — Compatibility & Support

Status: Active Development
Categoria: Segurança, Auditoria, DevOps, Infraestrutura

Objetivo

O Security Agent Platform é um agente de segurança voltado para auditoria de dispositivos USB em sistemas Linux, com foco em ambientes corporativos, servidores e estações de trabalho.

O projeto implementa um agente local que monitora eventos do kernel em tempo real e registra atividades de dispositivos USB para fins de auditoria e rastreabilidade.

Escopo Atual

O projeto atualmente implementa um agente USB funcional com:

Monitoramento em tempo real via logs do kernel (dmesg)

Detecção de conexão e desconexão de dispositivos USB

Registro estruturado de eventos em arquivo de log

Execução manual ou como serviço do sistema

Sistemas Operacionais Suportados
Sistema Operacional	Status
Ubuntu 20.04+	Suportado
Debian 11+	Suportado
WSL (Ubuntu)	Suporte parcial
RedHat / CentOS	Planejado
Windows (nativo)	Não suportado
macOS	Planejado
Dependências

Requisitos mínimos:

Kernel Linux 5.x ou superior

Bash

systemd

dmesg

Permissão de leitura dos logs do kernel

Pacotes necessários:

sudo apt install -y util-linux coreutils grep

Componentes Implementados
USB Agent

Localização:

apps/usb-agent/agent.sh


Funções:

Leitura contínua dos eventos do kernel via dmesg -w

Filtro de eventos USB

Registro de logs em:

logs/usb-agent.log

Estrutura Atual do Projeto
devops-usb-auditor/
├── apps/
│   └── usb-agent/
│       ├── agent.sh
│       └── LOG_FILE
├── logs/
│   └── usb-agent.log
├── docker/
├── kubernetes/
├── docs/
├── scripts/
├── README.md
└── COMPATIBILITY.md

Limitações Conhecidas

Suporte apenas para Linux

Requer privilégios elevados para leitura dos eventos do kernel

Dependência direta do dmesg

Roadmap Técnico

Fase 1 — Agente Local (Atual)

Monitoramento USB

Logs locais

Execução como serviço systemd

Fase 2 — DevOps

Containerização com Docker

Pipeline CI/CD

Build automatizado

Fase 3 — Cloud

Envio de logs para AWS e Azure

Observabilidade e alertas

Observações

Este projeto tem foco educacional e prático, simulando um cenário real de auditoria e segurança em ambientes corporativos.