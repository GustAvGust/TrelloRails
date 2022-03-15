module Mutations
  class EditList < BaseMutation
    argument :id, Integer, required: true
    argument :header, String, required: true
    # argument :user_id, Integer, required: true

    type Types::ListType

    # def resolve(id:, header:, user_id:)
    def resolve(id:, header:)
      List.find(id).tap do |list|
        list.update(header: header)
      end
      # List.update!(id: id, header: header, user_id: user_id)
    end
  end
end
