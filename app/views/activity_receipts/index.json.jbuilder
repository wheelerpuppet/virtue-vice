json.array!(@activity_receipts) do |activity_receipt|
  json.extract! activity_receipt, :id, :amount, :activity_id, :time_stamp
  json.url activity_receipt_url(activity_receipt, format: :json)
end
