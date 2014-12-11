json.array!(@recommendeduniversities) do |recommendeduniversity|
  json.extract! recommendeduniversity, :id, :institution_name, :institution_address, :institution_city, :institution_state, :institution_zip, :institution_web_address
  json.url recommendeduniversity_url(recommendeduniversity, format: :json)
end
