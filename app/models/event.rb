class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :join
  has_many :joins, dependent: :destroy
  has_many :users_joined, through: :joins, source: :user
end
