module RequestSpecHelper # What is module
  def json
    JSON.parse(response.body)
  end
end