class CommentSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :user_id, :text
end
