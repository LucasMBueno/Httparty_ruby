

describe 'soma', teste_soma: true do 
    
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


describe 'sub', teste_sub: true do 
    
    context 'sub dois numeros' do
        it 'positivos' do 
            total = 2 - 2
            puts total
            expect(total).to eq 0
        end

    end
end


describe 'mult', teste_mult: true do 
    
    context 'mult dois numeros' do
        it 'positivos' do 
            total = 2 * 2
            puts total
            expect(total).to eq 4
        end

    end
end