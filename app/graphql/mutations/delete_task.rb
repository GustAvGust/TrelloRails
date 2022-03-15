module Mutations
  class DeleteTask < BaseMutation
    argument :id, Integer, required: true

    type Types::TaskType

    def resolve(id:)
      Task.find(id).destroy
    end
  end
end
