# Automação de Testes BDD com Behave (SauceDemo)

Este projeto é uma **evolução/atualização** do projeto **[Teste-Basico-BDD-Gherkin](https://github.com/guilhermemroth/Teste-Basico-BDD-Gherkin)**, trazendo os cenários em Gherkin para o mundo real com **automação** usando **Behave (Python)** + **Selenium** no site de exemplo **SauceDemo**.

## Objetivo

- Manter cenários **BDD/Gherkin** como documentação viva
- Automatizar os cenários com **Behave**
- Validar fluxos de **login** (sucesso e falhas) no SauceDemo
- Gerar relatórios em HTML para consulta rápida

## Tecnologias

- Python 3.x
- Behave
- Selenium WebDriver (Chrome)
- behave-html-formatter (relatório HTML)

## Estrutura do Projeto

```text
.
├─ features/
│  ├─ authentication.feature
│  ├─ field_validation.feature
│  ├─ login.feature
│  └─ steps/
│     └─ login_steps.py
├─ reports/
│  └─ report.html
├─ requirements.txt
└─ README.md
