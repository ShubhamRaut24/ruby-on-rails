class Article < ApplicationRecord

    before_save { self.title[0] = title[0].upcase}

    validates :title, presence: true, length:{minimum:6, maximum:100}
    validates :description, presence: true, length:{minimum:10, maximum:500}

    belongs_to :user  #association part

    has_many :article_categories
    has_many :categories, through: :article_categories
end
