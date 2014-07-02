json.array!(@all_vendors) do |all_vendor|
  json.extract! all_vendor, :id, :name, :description
  json.url all_vendor_url(all_vendor, format: :json)
end
