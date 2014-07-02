class Bug < ActiveRecord::Base
  belongs_to :creator, :class_name => 'User'
  belongs_to :solver, :class_name => 'User'
  belongs_to :project, :class_name => 'Project'

  attr_accessible :title,:status, :description, :screenshot, :role, :deadline, :solver_id, :creator_id, :project_id
  validates_presence_of :title, :status, :role, :project_id
  validates_uniqueness_of :title
  
  BROLES = %w[bug feature]
  def role_symbols
    [role.to_sym]
  end


  mount_uploader :screenshot, ImageUploader

end
