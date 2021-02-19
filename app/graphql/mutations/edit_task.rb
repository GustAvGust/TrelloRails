module Mutations
  class EditTask < BaseMutation
    argument :id, Integer, required: true
    argument :header, String, required: true
    argument :description, String, required: true
    
    type Types::TaskType

    def resolve(id:, header:, description:)
      Task.find(id).tap do |task|
        task.update(header: header, description: description)
      end
    end
  end
end
