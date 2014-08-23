json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :photo_url, :costume, :chronology, :notes, :theme_id
  json.url activity_url(activity, format: :json)
end
