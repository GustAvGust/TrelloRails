module Mutations
  class DeleteList < BaseMutation
    argument :id, Integer, required: true

    type Types::ListType

    def resolve(id:)
      List.find(id).destroy
    end
  end
end
