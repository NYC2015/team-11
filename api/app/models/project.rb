class Project < ActiveRecord::Base
    has_many :project_users
    has_many :users, through: :project_users 
    has_and_belongs_to_many :tags
    belongs_to :channel
    has_many :votes
    has_many :comments
end
