class Role < ApplicationRecord
  has_many :users
  
  validates :name, presence: true, uniqueness: true, inclusion: { in: %w[civilian military commander contract_officer contract_officer_representative contractor vendors] }

  belongs_to :parent_role, foreign_key: :parent_id, class_name: 'Role'
  # belongs_to :root_parent_role, foreign_key: :root_parent_id, class_name: 'Role'
  has_many :sub_roles, foreign_key: :parent_id, class_name: 'Role'
  has_many :sibling_roles, foreign_key: :parent_id, primary_key: :parent_id, class_name: 'Role'
end
