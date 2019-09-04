class CreateApplicationForms < ActiveRecord::Migration[6.0]
  def change
    create_table :application_forms do |t|
      t.string :name
      t.string :cnic
      t.integer :age
      t.string :gender
      t.string :address
      t.string :mobile_number
      t.string :apply_for
      t.string :highest_education
      t.string :subject_or_areas
      t.string :upload_cv

      t.timestamps
    end
  end
end
