class AddTipoDeArticuloToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :tipo_de_articulo, :integer
  end
end
