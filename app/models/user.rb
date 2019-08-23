class User < ApplicationRecord
  belongs_to :role
  has_many :reviews
  has_many :services, through: :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role_id, presence: true
end
