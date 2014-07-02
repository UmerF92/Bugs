class WorksOn < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user, :class_name => 'User'
  belongs_to :project, :class_name => 'Project'


  attr_accessible :project_id, :user_id
  validates_presence_of :project_id, :user_id

end
