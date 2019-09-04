class CreateQualitativeResearchExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :qualitative_research_experiences do |t|
      t.string :name
      t.references :application_form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
