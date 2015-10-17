class VoteSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :user_id, :interested, :like
end
