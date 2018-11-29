describe 'usando arround' do

    around(:each) do |testes|
        puts ' executando comando antes do testes around'

        testes.run


        puts ' executando comando antes do testes around'
    end


    it 'positivos' do 
        total = 2 + 2
        puts total
        expect(total).to eq 4
    end

    it 'negativos' do 
        total = (-2)  + (-2)
        puts total
        expect(total).to eq -4 
    end
end
