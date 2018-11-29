describe 'Fazer um requisicao' do 
    context 'para alterar dados' do

        it 'put' do

            @bodyput ={
                "id": "110",
                "name": "Lucas rspec12",
                "last_name": "Teste rspec12",
                "email": "teste12@testerspec.com",
                "age": "24",
                "phone": "21984759575",
                "address": "Rua tres rspec",
                "state": "Minas Gerais",
                "city": "Belo Horizonte"
            }.to_json
           
            @segunda_opcao_put = Contato.put('/contacts/110', body: @bodyput)
            puts @segunda_opcao_put
        end
        
        it 'patch' do

            @bodypatch ={
                "id": "111",
                "name": "Lucas rspec11",
                "last_name": "Teste rspec11",
                "email": "teste11@testerspec.com"               
            }.to_json

            #segunda opção
            @segunda_opcao_patch = Contato.patch('/contacts/111', body: @bodypatch)
            puts @segunda_opcao_patch
        end
    end
end