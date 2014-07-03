json.array!(@new_vendors) do |new_vendor|
  json.extract! new_vendor, :id, :name, :country
  json.url new_vendor_url(new_vendor, format: :json)
end
