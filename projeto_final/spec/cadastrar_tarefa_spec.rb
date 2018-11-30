describe 'Cadastrar ' do
    
    def login(field_email, field_password)
    
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json

        @login = Login.post('/sessions', body: @body)
    end    
    
    context 'tarefas 'do

        before {
            login('brunobatista66@gmail.com','123456')
        }

        it 'com sucesso'do

            @header_tarefa = {
                'Content-Type': 'application/json',
                Accept: 'application/vnd.taskmanager.v2',
                Autorization: @login.parsed_response['data']['attributes']['auth-token']
            }

            @body_tarefa = {
                task: {
                    title: 'Tarefa Udemy',
                    description: 'aula Udemy API HTTParty',
                    deadline: '2018-12-30 08:30:00',
                    done: true
                }
            }.to_json
            
            @cadas_tarefa = Cadastrar.post('/tasks', body: @body_tarefa, headers: @header_tarefa)
            puts @cadas_tarefa
        end
    end
end