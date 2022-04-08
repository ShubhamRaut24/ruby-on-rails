class PhoneNumberResource < JSONAPI::Resource
    attributes :name, :phone_number
  has_one :contact
  

  filter :contact

  def meta(options)
    {
       info: 'API Copyright 2022 - XYZ Corp.',
       
    }
   end

   def name
    @model.name.upcase
  end

   
end
