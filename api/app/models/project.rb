class Project < ActiveRecord::Base
    has_many :project_users
    has_many :users, through: :project_users 
    has_many :project_tags
    belongs_to :channel
    has_many :votes
end
