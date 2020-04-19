# Git

## Configuração de usuário 
$ git config --global user.email "email-que-usou-pra-criar-a-conta-do-github"
$ git config --global user.name "nome-do-seu-usuario-de-login-do-github"

## Padronização para Mensagens de Commit
* `feat`: um novo recurso
* `fix`: uma correção de bug
* `docs`: alterações na documentação
* `style`: formatação, falta de dois pontos, etc; nenhuma mudança de código
* `refactor`: refatoração do código de produção
* `test`: adicionando testes, teste de refatoração; nenhuma mudança de código de produção
* `chore`: atualizar tarefas de compilação, configurações do gerenciador de pacotes, etc; nenhuma mudança de código de produção

## Comandos básicos
* git init // inicia o serviços git
* git status // mostra os arquivos novos ou que foram modificados
* git add * //  adiciona arquivos novos ou que foram modificados
* git commit // adiciona um ponto de referência 
* git branch // cria um nó
* git checkout // restaura um commit ou  branch
* git diff // compara duas versões
* git pull // atualiza os arquivos remotos de acordo com repositório do servidor

### Exemplo
~~~bash
git init
echo "mensagem" >> README.md
git add README.md 
git commit -m "mensagem sobre o que foi realizado"
git status
# adiciona o arquivo
git add seu-arquivo
# remove o arquivo
git rm seu-arquivo 
# renomeia o último commit
git commit --amend
# Push (empurrar) é usado para publicar todos os seus commits para um servidor git. 
# Neste momento, será pedido a senha.
$ git push -u origin master
~~~

## Branch
Quando os desenvolvedores estão trabalhando em um recurso ou bug que muitas vezes criam uma cópia (aka. Ramo) de seu código que podem fazer compromissos separados para. Em seguida, quando eles são feitos, eles podem fundir este ramo de volta em seu ramo mestre principal.

Queremos remover todos esses octokats traquinas, então vamos criar um ramo chamado clean_up, onde faremos todo o trabalho: 

~~~bash
git branch clean_up
~~~ 

Chegou o momento em que você tem que mesclar suas alterações do ramo clean_up para o ramo mestre. Respire fundo, não é tão assustador.

Já estamos no ramo principal, então precisamos apenas dizer ao Git para mesclar o ramo clean_up nele:

~~~bash
git merge clean_up
~~~

Parabéns Você acabou de realizar seu primeiro bugfix bem-sucedido e mesclar. Tudo o que resta a fazer é limpar a si mesmo. Uma vez que você terminou com o ramo clean_up você não precisa mais dele.

Você pode usar `git branch -d clean_up`  para excluir uma ramificação. Vá em frente e exclua o ramo clean_up agora:
Sugerir uma edição

~~~bash
git branch -d clean_up
~~~

## Referência
* https://try.github.io/levels/1/challenges/7
* https://www.vivaolinux.com.br/dica/GitHub-Gerenciando-repositorio-pelo-terminal
* https://eiquesado.wordpress.com/2014/10/28/primeiros-passos-com-git-e-github/