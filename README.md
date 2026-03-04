<h1>Automação de Testes BDD com Behave</h1>

<p>
Projeto de <strong>automação de testes utilizando BDD (Behavior Driven Development)</strong> com 
<strong>Python, Behave e Selenium</strong>.
</p>

<p>
Este projeto é uma <strong>evolução do projeto de escrita de cenários BDD</strong>:
</p>

<p>
<a href="https://github.com/guilhermemroth/Teste-Basico-BDD-Gherkin" target="_blank">
Teste-Basico-BDD-Gherkin
</a>
</p>

<p>
No projeto original foram criados os cenários em <strong>Gherkin</strong>.  
Neste repositório, esses cenários foram <strong>automatizados utilizando Python + Behave + Selenium</strong>
executando testes no site <strong>SauceDemo</strong>.
</p>

<p>
O objetivo é demonstrar um fluxo completo de <strong>BDD → Automação → Execução → Relatórios</strong>.
</p>

<hr>

<h2>Tecnologias utilizadas</h2>

<ul>
<li>Python</li>
<li>Behave (BDD Framework)</li>
<li>Selenium WebDriver</li>
<li>ChromeDriver</li>
<li>behave-html-formatter</li>
<li>Gherkin</li>
</ul>

<hr>

<h2>Estrutura do projeto</h2>

<pre>
automacao-de-testes-BDD-com-Behave
│
├─ features
│   ├─ authentication.feature
│   ├─ field_validation.feature
│   ├─ login.feature
│   │
│   └─ steps
│       └─ login_steps.py
│
├─ reports
│   └─ report.html
│
├─ requirements.txt
└─ README.md
</pre>

<hr>

<h2>Cenários automatizados</h2>

<p>Os testes automatizam cenários de login no site:</p>

<p>
<a href="https://www.saucedemo.com/" target="_blank">
https://www.saucedemo.com/
</a>
</p>

<h3>Login inválido</h3>
<ul>
<li>senha incorreta</li>
<li>usuário incorreto</li>
<li>usuário + senha incorretos</li>
</ul>

<h3>Validação de campos obrigatórios</h3>
<ul>
<li>login sem senha</li>
<li>login sem usuário</li>
<li>login sem usuário e senha</li>
</ul>

<h3>Login válido</h3>
<ul>
<li>acesso à página <code>/inventory.html</code></li>
</ul>

<hr>

<h2>Pré-requisitos</h2>

<ul>
<li>Python 3 instalado</li>
<li>Google Chrome instalado</li>
<li>Git instalado</li>
</ul>

<hr>

<h2>Instalação</h2>

<p>Clone o repositório:</p>

<pre>
git clone https://github.com/guilhermemroth/automacao-de-testes-BDD-com-Behave.git
</pre>

<p>Entre na pasta do projeto:</p>

<pre>
cd automacao-de-testes-BDD-com-Behave
</pre>

<hr>

<h2>Criar ambiente virtual</h2>

<p>Windows:</p>

<pre>
python -m venv venv
</pre>

<p>Ativar ambiente virtual:</p>

<pre>
venv\Scripts\activate
</pre>

<hr>

<h2>Instalar dependências</h2>

<pre>
pip install -r requirements.txt
</pre>

<hr>

<h2>Executar os testes</h2>

<pre>
behave
</pre>

<p>Executar com saída detalhada:</p>

<pre>
behave -f pretty
</pre>

<hr>

<h2>Gerar relatório HTML</h2>

<p>Criar pasta de relatórios:</p>

<pre>
mkdir reports
</pre>

<p>Gerar relatório:</p>

<pre>
behave -f behave_html_formatter:HTMLFormatter -o reports/report.html
</pre>

<p>Abrir relatório no Windows:</p>

<pre>
start reports\report.html
</pre>

<hr>

<h2>Projeto base</h2>

<p>
Este projeto automatiza os cenários definidos no projeto:
</p>

<p>
<a href="https://github.com/guilhermemroth/Teste-Basico-BDD-Gherkin" target="_blank">
Teste-Basico-BDD-Gherkin
</a>
</p>

<p>
O objetivo foi transformar <strong>cenários escritos em Gherkin</strong> em 
<strong>testes automatizados executáveis</strong>.
</p>

<hr>

<h2>Autor</h2>

<p>Guilherme Roth</p>

</div>

</body>
</html>
