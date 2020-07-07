# Git

## Configuração de usuário 
~~~bash
$ git config --global user.email "email-que-usou-pra-criar-a-conta-do-github"
$ git config --global user.name "nome-do-seu-usuario-de-login-do-github"
~~~

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
git merge -squash clean_up
git commit -m "Todos os commits da branch se tornam apenas um commit"
~~~

Parabéns Você acabou de realizar seu primeiro bugfix bem-sucedido e mesclar. Tudo o que resta a fazer é limpar a si mesmo. Uma vez que você terminou com o ramo clean_up você não precisa mais dele.

Você pode usar `git branch -d clean_up`  para excluir uma ramificação. Vá em frente e exclua o ramo clean_up agora:
Sugerir uma edição

~~~bash
git branch -d clean_up
~~~

## Editar commit
~~~bash 
# último commit
git commit --amend

# Exibe uma lista dos 3 últimos commits no branch atual
git rebase -i HEAD~3
~~~

Opções de alteração o commit
~~~bash
pick e499d89 Delete CNAME
pick 0c39034 Better README
pick f7fde4a Change the commit message but push the same commit.

# Rebase 9fdb3bd..f7fde4a onto 9fdb3bd
#
# Comandos:
# p, pick = usar commit
# r, reword = usar commit, mas editar a mensagem do commit
# e, edit = usar commit, mas interromper para correção
# s, squash = usar commit, mas combinar com commit anterior
# f, fixup = como "squash", mas descartar a mensagem de log do commit
# x, exec = executar o comando (o restante da linha) usando shell
#
# Essas linhas podem ser reordenadas; elas são executadas de cima para baixo.
#
# Se você remover uma linha aqui ESSE COMMIT SERÁ PERDIDO.
#
# No entanto, se você remover tudo, o rebase será anulado.
#
# Observe que commits vazios são comentados
~~~

## [fecth Fork](https://www.lambda3.com.br/2016/02/mantendo-um-fork-atualizado-no-github/)

* Clone do Fork
~~~
git clone repo-fork
~~~

* remonta o repositório original
~~~
git remote add upstream repo-de-orign
~~~

* fetch upstream
~~~
git fetch upstream 
~~~

* rebase upstream 
~~~
git rebase upstream/master
~~~

---

## [Stash](https://medium.com/wooza/git-stash-conhecendo-e-utilizando-um-dos-comandos-mais-pr%C3%A1ticos-para-o-versionamento-de-seu-c%C3%B3digo-a4dab3ac70da#:~:text=Pois%20bem%2C%20a%20utiliza%C3%A7%C3%A3o%20do,o%20seu%20desenvolvimento%20de%20c%C3%B3digo.)

Considerando que você tenha arquivos pendentes para commitar, ao utilizar o comando git stash no seu terminal, o Git vai criar uma branch temporária contendo a versão atual do seu projeto e após isso vai desfazer essas modificações feitas nos arquivos da sua branch atual.

~~~bash
# cria um ramo temporário e 
# realiza um checkout para o último commit
git stash
~~~

cria aquela ramificação que foi citada para você com as alterações que tinhas realizado e para recuperar basta usar o comando `git stash apply` e dessa forma, todos os arquivos que você modificou no momento do apply vão ser restaurado, exatamente como você deixou.

~~~bash
# restaura os arquivos modificados
git stash apply
~~~

consultar todos os stash’s criados com o comando: 
~~~bash
git stash list
~~~

## Referência
* https://try.github.io/levels/1/challenges/7
* https://www.vivaolinux.com.br/dica/GitHub-Gerenciando-repositorio-pelo-terminal
* https://eiquesado.wordpress.com/2014/10/28/primeiros-passos-com-git-e-github/
