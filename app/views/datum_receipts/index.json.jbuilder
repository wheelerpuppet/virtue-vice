json.array!(@datum_receipts) do |datum_receipt|
  json.extract! datum_receipt, :id, :amount, :time_stamp, :data_id
  json.url datum_receipt_url(datum_receipt, format: :json)
end
