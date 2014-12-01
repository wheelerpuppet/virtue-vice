json.array!(@data) do |datum|
  json.extract! datum, :id, :label, :amount, :activity_id
  json.url datum_url(datum, format: :json)
end
