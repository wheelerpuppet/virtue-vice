json.array!(@cards) do |card|
  json.extract! card, :id, :category, :description, :value, :date, :author_id, :recipient_id
  json.url card_url(card, format: :json)
end
