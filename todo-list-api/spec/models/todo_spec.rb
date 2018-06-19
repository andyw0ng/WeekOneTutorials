# require 'rails_helper'
#
# RSpec.describe Todo, type: :model do
#   # Association Test
#   it { should have_many(:items).dependent(:destroy) } # figure our what dependent(:destroy) is doing.
#
#
#   # Validation Test
#
#   # Validate_presence_of makes sure they exist before saving
#   it { should validate_presence_of(:title) }
#   it { should validate_presence_of(:created_by) }
# end

require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end