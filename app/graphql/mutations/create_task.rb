module Mutations
  class CreateTask < BaseMutation
    argument :header, String, required: true
    argument :description, String, required: true
    argument :list_id, Integer, required: true
    
    type Types::TaskType

    def resolve(header:, description:, list_id:)
      Task.create!(header: header, description: description, list_id: list_id)
    end
  end
end
