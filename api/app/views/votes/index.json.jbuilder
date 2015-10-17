json.array!(@votes) do |vote|
  json.extract! vote, :id, :project_id, :user_id, :interested, :like
  json.url vote_url(vote, format: :json)
end
