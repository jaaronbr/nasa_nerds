class NasaPic < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :image
  validates_presence_of :date_taken
end
