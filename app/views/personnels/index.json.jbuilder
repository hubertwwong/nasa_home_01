json.array!(@personnels) do |personnel|
  json.extract! personnel, :first_name, :last_name
  json.url personnel_url(personnel, format: :json)
end
