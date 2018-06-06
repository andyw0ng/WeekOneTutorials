class Todo < ApplicationRecord

  #Association
  has_many :items, dependent: :destroy

  #Validation Test
  validates_presence_of :title, :created_by

end
