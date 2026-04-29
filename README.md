# This is an simple api rails app. 

It has a 
- Notes Model with 'title' and 'content', 
- RESTful routes, and a 
- Notes Controller 'actions' for 'index', 'show' and 'create'; 
the Notes Controller 'fetches' or 'creates' records ('Notes') and it returns 'JSON' responses ('strong params' are used to control input). 

# STEPS:
1. rails g model Note title:string content:text
2. rails db:migrate
3. rails g controller Notes 
4. Add/modify 'config/routes.rb' and let rails mapping them with the actions (api endpoints):
    Rails.application.routes.draw do
        resources :notes, only: [:index, :show, :create]
    end
5. Build Controller '(app/controllers/notes_controller.rb)' where the actions live (:index, :show, :create)
6. Test with curl - Example:
    # create1
    curl -X POST http://localhost:3000/notes \
    -H "Content-Type: application/json" \
    -d '{"note": {"title": "First", "content": "Hello"}}'

    # index
    curl http://localhost:3000/notes :URL too

    # show
    curl http://localhost:3000/notes/1 :URL too

    # create2
    curl -X POST http://localhost:3000/notes \
    -H "Content-Type: application/json" \
    -d '{"note": {"title": "Second", "content": "Soliloquy"}}'

        # index
    curl http://localhost:3000/notes :URL too

    # show
    curl http://localhost:3000/notes/2 :URL too


# TESTING RIGOROUSLY:
rails s

rails db:version

rails db:migrate:status

rails console (or psql rails_crud_template_development - SELECT * FROM notes)
    Note.all

curl http://localhost:3000/notes

curl -X POST http://localhost:3000/notes \
  -H "Content-Type: application/json" \
  -d '{"note": {"title": "Test", "content": "Hello"}}'

