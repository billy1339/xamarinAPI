json.array!(@scanneds) do |scanned|
  json.extract! scanned, :id
  json.url scanned_url(scanned, format: :json)
end
