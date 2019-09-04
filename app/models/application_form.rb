class ApplicationForm < ApplicationRecord
	  mount_uploader :upload_cv, CvUploader
	  has_many :qualitative_research_experiences
	 validates :name, presence: true
	 validates :cnic, presence: true
	 validates :age, presence: true
	 validates :gender, presence: true
	 validates :address, presence: true
	 validates :mobile_number, presence: true
	 validates :apply_for, presence: true
	 validates :highest_education, presence: true
	 validates :subject_or_areas, presence: true
	 validates :highest_education, presence: true
	 validates :subject_or_areas, presence: true
	 # validates :qualitative_research_experience, presence: true
	 validates :upload_cv, presence: true
end
