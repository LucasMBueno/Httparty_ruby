describe 'usando hooks' do

    before(:each) do
        puts 'executei antes dos testes'
    end

    context 'somar 2 numeros' do

        let(:resultado) {4 + 4}

        it 'does something' do
            puts resultado
            expect(resultado).to eq 8

        end
    end

    before(:each) do
        puts 'executei depois dos testes'
    end
end
