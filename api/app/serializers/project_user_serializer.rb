class ProjectUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :project_id, :owner
end
