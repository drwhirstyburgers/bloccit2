class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 20 }, presence: true
  validates_inclusion_of :public, :in => [true, false]
end
