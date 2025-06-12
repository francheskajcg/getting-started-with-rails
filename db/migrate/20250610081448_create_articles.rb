class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

#create_table especifica cómo debe ser creada la tabla de articles, agrega un id por defecto
#se definen dos columnas: title y body.
#bin/rails generate model Article title:string body:text
#t.timestamps. Este método define dos columnas adicionales nombradas created_at y updated_at
#
#despues de crear esto debo ejecutar la migracion: bin/rails db:migrate
