json.array!(@pnotes) do |pnote|
  json.extract! pnote, :id, :para1, :para2, :para3, :patient_id
  json.url pnote_url(pnote, format: :json)
end
