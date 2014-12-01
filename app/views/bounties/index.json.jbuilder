json.array!(@bounties) do |bounty|
  json.extract! bounty, :id, :description, :value, :deadline, :type, :author_id, :recipient_id
  json.url bounty_url(bounty, format: :json)
end
