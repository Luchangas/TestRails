class ArticlePolicy #< ApplicationPolicy
  attr_reader :user, :article

  def initialize(user, article)
    @user =  user
    @article = article
  end

  def update?
     article.published?
  end
end
