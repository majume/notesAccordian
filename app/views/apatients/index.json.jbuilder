json.array!(@apatients) do |apatient|
  json.extract! apatient, :id, :first_name, :last_name, :c_number, :date_of_admission
  json.url apatient_url(apatient, format: :json)
end
