json.array!(@modification_receipts) do |modification_receipt|
  json.extract! modification_receipt, :id, :new_points, :activity_id, :time_stamp
  json.url modification_receipt_url(modification_receipt, format: :json)
end
