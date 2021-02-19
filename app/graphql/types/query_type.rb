module Types
  class QueryType < Types::BaseObject
    # # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    # # Add root-level fields here.
    # # They will be entry points for queries on your schema.

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    field :tasks, [Types::TaskType], null: false
    
    field :task, Types::TaskType, null: false do
      argument :id, Integer, required: true
    end
    
    field :lists, [Types::ListType], null: false
    
    field :list, Types::ListType, null: false do
      argument :id, Integer, required: true
    end

    def lists
      List.all
    end
    
    def list(id:)
      List.find(id)
    end

    def tasks
      Task.all
    end

    def task(id:)
      Task.find(id)
    end
    
  end
end
