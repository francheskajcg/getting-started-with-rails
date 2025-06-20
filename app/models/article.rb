class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  
  enum tipo_de_articulo: {
    noticia: 0,
    opinion: 1,
    reseña: 2
  }

  validates :tipo_de_articulo, presence: true

end