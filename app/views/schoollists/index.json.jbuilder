json.array!(@schoollists) do |schoollist|
  json.extract! schoollist, :id, :name, :comment
  json.url schoollist_url(schoollist, format: :json)
end
