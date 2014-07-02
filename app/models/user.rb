class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :bugs, :class_name => 'Bug', :foreign_key => 'creator_id'
  has_many :bugs, :class_name => 'Bug', :foreign_key => 'solver_id'
  has_many :projects, :class_name => 'Project', :foreign_key => 'manager_id'
  has_many :workprojects, :class_name => 'Wroks_On', :foreign_key => 'user_id'


  ROLES = %w[manager developer qa]
  def role_symbols
    [role.to_sym]
  end

  
  attr_accessible :email, :password, :password_confirmation, :name, :role

  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end