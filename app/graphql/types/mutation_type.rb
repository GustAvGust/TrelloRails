module Types
  class MutationType < Types::BaseObject
    field :delete_task, mutation: Mutations::DeleteTask
    field :delete_list, mutation: Mutations::DeleteList
    field :edit_task, mutation: Mutations::EditTask
    field :edit_list, mutation: Mutations::EditList
    field :create_list, mutation: Mutations::CreateList
    field :create_task, mutation: Mutations::CreateTask
  end
end
