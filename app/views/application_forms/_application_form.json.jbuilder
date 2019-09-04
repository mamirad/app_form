json.extract! application_form, :id, :name, :cnic, :age, :gender, :address, :mobile_number, :apply_for, :highest_education, :subject_or_areas, :qualitative_research_experience, :upload_cv, :created_at, :updated_at
json.url application_form_url(application_form, format: :json)
