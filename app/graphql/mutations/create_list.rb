module Mutations
  class CreateList < BaseMutation
    argument :header, String, required: true
    argument :user_id, Integer, required: true
    
    type Types::ListType

    def resolve(header:, user_id:)
      List.create!(header: header, user_id: user_id)
    end
  end
end
