json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :card_id, :author_id
  json.url comment_url(comment, format: :json)
end
