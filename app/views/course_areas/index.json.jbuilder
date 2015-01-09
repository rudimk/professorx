json.array!(@course_areas) do |course_area|
  json.extract! course_area, :id, :name, :course_id
  json.url course_area_url(course_area, format: :json)
end
