class CategoryResource < JSONAPI::Resource
    attributes :name

    has_many :articles  
end
