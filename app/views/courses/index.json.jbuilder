json.array!(@courses) do |course|
  json.extract! course, :id, :title, :author, :user_id, :cost, :billing_id
  json.url course_url(course, format: :json)
end
