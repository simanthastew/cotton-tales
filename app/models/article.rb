class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :revisions

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  def update_article(article)
    if @article.revisions.any?
      @article.body = @article.revisions.last
    end
    @article
  end
  helper_method :update_article(article)

end
