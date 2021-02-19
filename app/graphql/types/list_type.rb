module Types
  class ListType < Types::BaseObject
    field :id, ID, null: false
    field :header, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true
    field :tasks, [Types::TaskType], null: true
  end
end
