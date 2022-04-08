class ArticleResource < JSONAPI::Resource

    attributes :title, :description
    attributes :created_at, :updated_at
    

    has_one :user
    
    has_many :categories
end
