class User < ActiveRecord::Base
  has_secure_password
  belongs_to :location
  has_many :secrets
  has_many :joins, dependent: :destroy
  has_many :events_joined, through: :joins, source: :events
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { in: 8..20}
  validates_confirmation_of :password
  validates_confirmation_of :email
end
