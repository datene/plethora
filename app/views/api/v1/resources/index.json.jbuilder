# app/views/api/v1/restaurants/index.json.jbuilder
json.array! @resources do |resource|
  json.extract! resource, :id, :title, :url, :description
end