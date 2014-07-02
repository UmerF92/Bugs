class Project < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :bugs, :class_name => 'Bug', :foreign_key => 'project_id'
  has_many :users, :class_name => 'WorksOn', :foreign_key => 'project_id'
  belongs_to :manager, :class_name => 'User'


  attr_accessible :title,:manager_id,:description
  validates_presence_of :title
  validates_uniqueness_of :title


end
