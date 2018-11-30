describe 'Fazer um requisicao' do 

    it 'GET' do
        @GET = Contato.get('/contacts/110')
        #puts @GET
        #puts @GET.code
        expect(@GET.code).to eq 200
        puts @GET.body
        #puts @GET.parsed_response['data']['attributes']['name']
        @nome =  @GET.parsed_response['data']['attributes']['name']
        puts '--------------------- teste nome'
        puts @nome
        expect(@nome).to eq 'Lucas rspec121'
        @last =  @GET.parsed_response['data']['attributes']['last-name']
        expect(@last).to eq 'Teste rspec12'
        @email =  @GET.parsed_response['data']['attributes']['email']
        expect(@email).to eq 'teste12@testerspec.com'
        @age =  @GET.parsed_response['data']['attributes']['age']
        expect(@age).to eq 24
    end

end