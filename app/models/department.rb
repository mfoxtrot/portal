class Department < ActiveRecord::Base

  has_many :people

  has_many :children, class_name: 'Department', foreign_key: 'department_id'
  belongs_to :parent, class_name: 'Department', foreign_key: 'department_id'

  scope :head_departments, -> { where(parent: nil) }

end
