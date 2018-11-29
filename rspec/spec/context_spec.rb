
describe 'soma' do 
    
    context 'somar dois numeros' do
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
end