# module RequestSpecHelper # What is module
#   def json
#     JSON.parse(response.body)
#   end
# end
#
module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end