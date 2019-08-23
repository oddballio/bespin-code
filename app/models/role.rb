class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: true, inclusion: { in: %w[civilian military] }
end
