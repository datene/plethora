# app/views/api/v1/resources/show.json.jbuilder
json.extract! @resource, :id, :title, :url, :description
json.comments @resource.tags do |tag|
  json.extract! tag, :id, :title
end