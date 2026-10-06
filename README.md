# Controle de Avarias e Perdas em Estoque

Projeto desenvolvido para resolver um problema real do varejo/supermercados: a falta de rastreabilidade detalhada sobre perdas e quebras de mercadorias (seja por avaria no transporte, movimentação de paletes ou avaria no estoque).

A aplicação permite registrar, categorizar e mapear a origem das avarias vinculadas aos seus respectivos lotes e produtos, facilitando a análise de gargalos operacionais.

---

## 🛠️ Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL & DBeaver
* **Linguagem:** Java (Orientação a Objetos)
* **Framework:** Spring Boot (API REST)
* **Controle de Versão:** Git & GitHub

---

## 📌 Status do Desenvolvimento

- [x] **Fase 1 — Banco de Dados:** Modelagem relacional (`produtos`, `lotes`, `avarias`), chaves primárias/estrangeiras e consultas analíticas com `INNER JOIN`.
- [ ] **Fase 2 — Regra de Negócio (Java & POO):** Modelagem de entidades, encapsulamento e regras de validação.
- [ ] **Fase 3 — API REST (Spring Boot):** Endpoints para cadastro e listagem de avarias via requisições HTTP (JSON).
- [ ] **Fase 4 — Interface Visual:** Integração com front-end para consumo das rotas da API.

---

## 🚀 Como Executar o Projeto Localmente

### Pré-requisitos
* Java JDK 17 ou superior
* PostgreSQL instalado e rodando
* Git

### Passos
1. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/ThiagoAmaralDev/controle_avarias.git](https://github.com/ThiagoAmaralDev/controle_avarias.git)
