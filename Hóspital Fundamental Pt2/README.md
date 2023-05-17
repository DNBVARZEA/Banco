<div align="center">
  <h1>O Hospital Fundamental Parte 2</h1>
</div>

<div align="justify">
  <h2>Os Segredos do Hospital</h2>
  <div>
    <p>Após a primeira versão do projeto de banco de dados para o sistema hospitalar, notou-se a necessidade de expansão das funcionalidades, incluindo alguns requisitos essenciais a essa versão do software. As funcionalidades em questão são para o controle na internação de pacientes. Será necessário expandir o Modelo ER desenvolvido e montar o banco de dados, criando as tabelas para o início dos testes.</p>
  </div>
</div>

<div align="justify">
  <h2>Entender do assunto</h2>
<div>
    <em>
      <p>Considere a seguinte descrição e o diagrama ER abaixo:</p>
      <p>No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos.</p>
      <p>Para cada internação, <strong>são anotadas a data de entrada, a data prevista de alta</strong> e <strong>a data efetiva de alta</strong>, além da <strong>descrição textual dos procedimentos</strong> a serem realizados.</p> <br>
      <p>As internações precisam ser vinculadas a quartos, com a numeração e o tipo.</p> <br>
      <p>Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).</p> <br>
      <p>Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE). A internação, obviamente, é <strong>vinculada a um paciente</strong> – que pode se internar <strong>mais de uma vez no hospital</strong> – e a <strong>um único médico responsável</strong>.</p>
    </em>
  </div>
  
<div>
    <div align="center">
      <h2>O seguinte pedaço de Diagrama ER modela esses novos requisitos:</h2>
      <img width=100% src="https://github.com/DevPedroSantos/BancoDeDados/assets/102003471/9ecfddde-6f68-407b-a667-d6f049dd0ef4" />
    </div>
</div>
  
<div align="justify">
  <h2>Mãos a obra?</h2>
  <div>
    <p>Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações.</p> <br>
    <p>Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.</p> <br>
    <p>Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.</p> <br>
    <p>Você pode utilizar o MySQL Workbench ou o DBdiagram.io para <strong>montar os scripts SQL</strong>.<br><strong>Importante</strong>: desse modelo já devemos <strong>gerar</strong> a etapa lógica da nossa modelagem!
  </div>
</div>
  
 <div>
    <div align="center">
      <h2>Modelo conceitual:</h2>
      <img width=100% src="https://github.com/DevPedroSantos/BancoDeDados/assets/102003471/1f598c30-b3e1-4c28-9b68-e5ca09e43189" />
    </div>
    <div align="center">
      <h2>Modelo lógico:</h2>
      <img width=100% src="https://github.com/DevPedroSantos/BancoDeDados/assets/102003471/a2c24c48-6fa8-4273-b751-6ecc01c61fe6" />
    </div>
</div>
