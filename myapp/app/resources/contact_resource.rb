class ContactResource < JSONAPI::Resource
  
    
    attributes :name_first, :name_last, :email, :twitter
    # has_many :phone_numbers #relationships
    
    attribute :full_name

    attribute :created_at

    def full_name
    "#{@model.name_first}, #{@model.name_last}"
    end

    def email
        @model.email.upcase
      end

    def fetchable_fields
        if (@model.name_first=="MyString" || @model.name_first=="Felicia" )
          super
        else
          super - [:email,:twitter]
        end
      end

    #   def self.sortable_fields(context)  # prevents sorting by post’s email
    #     super(context) - [:email]
    #   end
    #   def self.sortable_fields(context)
    #     super + [:"phone_numbers.name"]
    #   end

    # def self.default_sort
    #     [{field: 'name_last', direction: :desc}, {field: 'name_first', direction: :desc}]
    #   end

    #filters
    filter :id
    filters :name_first, :name_last
    filter :ids,
  verify: ->(values, context) {
    verify_keys(values, context)
    values
  },
  apply: ->(records, value, _options) {
    records.where('id IN (?)', value)
  }
#   paginator :none

def meta(serialization_options)
    {
       info: serialization_options
       
    }
   end
     
end
