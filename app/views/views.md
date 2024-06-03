As views ficam no diretório `app/views/controller_name/action_name.html.erb`, onde `controller_name`
é o nome do controlador ao qual a visualização está vinculada e `action_name.html.erb` é o método 
correspondente dentro do controlador que foi executado imediatamente antes de renderizar a visualização.

REAFIRMANDO: 
No diretório `app/views/controller_name/action_name.html.erb` 

`controller_name` é o nome do controlador 

`action_name.html.erb` é o método correspondente dentro do controlador

que foram vinculadas e executadas, respectivamente, antes de renderizar a visualização.

O `Posts` controlador que executa a ação `#index` redenrizará implicitamente  a `app/views/posts/index.html.erb`. 

A diferença entre `<%` e `<%=` é que a versão`<%=` realmente exibe tudo o que é retornado dentro das tags ERB. Se você usar `<%`, ele executará o código, mas, não importa o que seja retornado por essa linha, na verdade não exibirá nada em seu modelo HTML. 
`<%#` é usado para comentar e não será executado.

```
  <% if current_user.signed_in? %>
    <ul>
      <% @users.each do |user| %>
        <li><%= user.first_name %></li>
      <% end %>
    </ul>
  <% else %>
    <strong>You must sign in!</strong>
  <% end %>
```