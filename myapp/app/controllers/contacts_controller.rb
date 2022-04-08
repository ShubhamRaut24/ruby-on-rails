class ContactsController < JSONAPI::ResourceController

    def serialization_options
        {copyright: 'Copyright 2022'}
        

      end
  
    

      def show 
       
        contact = Contact.last
        
        # result = JSONAPI::ResourceSerializer.new(ContactResource).serialize_to_hash(ContactResource.new(contact, nil))
        # puts result.to_json
        render json: contact
         
      end

 
end
