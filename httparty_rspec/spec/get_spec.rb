
describe 'Fazer um requisicao' do 

    it 'GET' do
        #sem module
        #@primeira_opcao = HTTParty.get('http://api-de-tarefas.herokuapp.com/contacts/109')
        #puts @primeira_opcao


        #segunda opção
        @segunda_opcao = Contato.get('/contacts/109')
        puts @segunda_opcao
    end

end