module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :header, String, null: true
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :list_id, Integer, null: false
  end
end
