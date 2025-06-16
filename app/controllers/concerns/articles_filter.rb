module ArticlesFilter
  extend ActiveSupport::Concern  # Esto permite que el módulo se comporte como un "módulo Rails"

  included do
    before_action :load_public_articles, only: [:index]
  end

# before_action :load_public_articles ejecuta el método antes de que se corra la acción index.

  private

  def load_public_articles
    @articles = Article.where(status: "mostrar todo")
  end
end

#load_public_articles es el método que busca los artículos públicos.