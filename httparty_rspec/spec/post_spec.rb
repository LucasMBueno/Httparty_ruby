describe 'Fazer um requisicao' do 

    it 'POST' do

        @body ={
            "name": "Lucas rspec1",
            "last_name": "Teste rspec1",
            "email": "teste133@testerspec.com",
            "age": "24",
            "phone": "21984759575",
            "address": "Rua tres rspec",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json

        @headers ={
            "Accept": 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
        }
        #sem module
        #@primeira_opcao_post = HTTParty.post('http://api-de-tarefas.herokuapp.com/contacts', body: @body, headers:@headers)
        #puts @primeira_opcao_post


        #segunda opção
        @segunda_opcao_post = Contato.post('/contacts', body: @body)
        puts @segunda_opcao_post
    end

end