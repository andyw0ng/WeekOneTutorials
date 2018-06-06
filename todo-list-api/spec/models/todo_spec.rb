require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association Test
  it { should have_many(:items).dependent(:destroy) } # figure our what dependent(:destroy) is doing.


  # Validation Test

  # Validate_presence_of makes sure they exist before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
