Feature: [Auto Avalia��o]
As a [Aluno]
I want to [Atribuir conceitos que eu acho justos �s minhas metas e, ao mesmo tempo, observar os conceitos que o professor me atribuiu]
so that [Eu posso relacionar as avalia��es]

Scenario: Preenchimento correto de Auto Avalia��o (GUI)
Given Eu estou na tela de �auto avalia��o� logado como �Aluno�
And os conceitos dados pelo professor para as metas j� aparecem na tela
When Eu tenho enviar um formul�rio preenchido com todas as avalia��es
Then � exibida uma mensagem de sucesso

Scenario: Preenchimento correto de Auto Avalia��o (Servi�o)
Given O sistema apresenta as avalia��es do professor para as metas �Entender conceitos de requisitos, Especificar requisitos com qualidade, Entender conceitos de ger�ncia de configura��o, Etc.� do aluno �Saulo Guilhermino�, mas n�o apresenta as auto avalia��es do aluno �Saulo Guilhermino�
When O aluno �Saulo Guilhermino� preenche os campos de avalia��o das metas �Entender conceitos de requisitos, Especificar requisitos com qualidade, Entender conceitos de ger�ncia de configura��o, Etc.� com as avalia��es �MANA, MPA, MA, MA�  e envia o formul�rio para o servidor
Then O sistema armazena as avalia��es nos campos necess�rios.