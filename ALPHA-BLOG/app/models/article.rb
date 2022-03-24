class Article < ApplicationRecord

    before_save { self.title[0] = title[0].upcase}

    belongs_to :user  #association part

    validates :title, presence: true, length:{minimum:6, maximum:100}
    validates :description, presence: true, length:{minimum:10, maximum:500}
end
