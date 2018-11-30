module Contato
    puts '----------------------'
    puts ' Inicializando Modulo '
    puts '----------------------'
    include HTTParty
    #url base de contato
    #base_uri 'http://api-de-tarefas.herokuapp.com'
    base_uri CONFIG['url_padrao']

    #opções do meu service
    format :json
    headers Accept:'application/vnd.tasksmanager.v2',
        'Content-Type': 'application/json'
        
    
end