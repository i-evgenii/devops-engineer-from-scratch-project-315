### Hexlet tests and linter status:
[![Actions Status](https://github.com/i-evgenii/devops-engineer-from-scratch-project-315/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/i-evgenii/devops-engineer-from-scratch-project-315/actions)

**Приложение:** https://app.example.com

Учебный проект Hexlet: Spring Boot-приложение

- **Приложение** — Spring Boot 3, образ `ghcr.io/i-evgenii/project-devops-deploy:sha-a02c580`
- **БД** — PostgreSQL 17 в контейнере
- **Nginx** — reverse proxy, TLS (Let's Encrypt), кеш статики
- **S3** — файлы и загрузки, presigned URL
- **Секреты** — Ansible Vault

## Требования

### К локальной машине (control node)

- `ansible >= 2.15`
- `ansible-galaxy`
- SSH-ключ `~/.ssh/id_ed25519`
- Пароль от Ansible Vault в `.vault_pass` (права `0600`)

### К целевой машине

- Ubuntu 22.04 LTS (или совместимый Debian)
- 2 vCPU / 2 GB RAM / 20 GB SSD
- Публичный IPv4, доступ по SSH-ключу
- Открытые порты: 22 (SSH), 80 (HTTP), 443 (HTTPS)
- A-запись домена (`app.example.com`) указывает на IP сервера

## Установка зависимостей

```bash
make deps
