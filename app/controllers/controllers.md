[Controladores](https://www.theodinproject.com/lessons/ruby-on-rails-controllers)

O trabalho do controlador é realmente agir como o intermediário final. Ele sabe quais perguntas deseja fazer ao modelo, mas deixa o modelo fazer todo o trabalho pesado para realmente resolver essas questões. [...]
Tudo o que ele faz é coletar o lote adequado de variáveis ​​de instância para enviar à visualização.

 Depois que uma solicitação HTTP chega à sua aplicação e o roteador decide para qual controlador e ação mapeá-la, o Rails empacota todos os parâmetros que foram associados a essa solicitação e executa o método especificado no controlador especificado.

E se você quiser mostrar todas as postagens do seu blog na página de índice do seu site? 

Execute a #indexação do seu controlador de Postagens e ele pegará todas as suas postagens e as enviará para o `index.html.erb`
arquivo de visualização. 



