json.array!(@majorrankings) do |majorranking|
  json.extract! majorranking, :id
  json.url majorranking_url(majorranking, format: :json)
end
