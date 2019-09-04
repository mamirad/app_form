require "application_system_test_case"

class ApplicationFormsTest < ApplicationSystemTestCase
  setup do
    @application_form = application_forms(:one)
  end

  test "visiting the index" do
    visit application_forms_url
    assert_selector "h1", text: "Application Forms"
  end

  test "creating a Application form" do
    visit application_forms_url
    click_on "New Application Form"

    fill_in "Address", with: @application_form.address
    fill_in "Age", with: @application_form.age
    fill_in "Apply for", with: @application_form.apply_for
    fill_in "Cnic", with: @application_form.cnic
    fill_in "Gender", with: @application_form.gender
    fill_in "Highest education", with: @application_form.highest_education
    fill_in "Mobile number", with: @application_form.mobile_number
    fill_in "Name", with: @application_form.name
    fill_in "Qualitative research experience", with: @application_form.qualitative_research_experience
    fill_in "Subject or areas", with: @application_form.subject_or_areas
    fill_in "Upload cv", with: @application_form.upload_cv
    click_on "Create Application form"

    assert_text "Application form was successfully created"
    click_on "Back"
  end

  test "updating a Application form" do
    visit application_forms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @application_form.address
    fill_in "Age", with: @application_form.age
    fill_in "Apply for", with: @application_form.apply_for
    fill_in "Cnic", with: @application_form.cnic
    fill_in "Gender", with: @application_form.gender
    fill_in "Highest education", with: @application_form.highest_education
    fill_in "Mobile number", with: @application_form.mobile_number
    fill_in "Name", with: @application_form.name
    fill_in "Qualitative research experience", with: @application_form.qualitative_research_experience
    fill_in "Subject or areas", with: @application_form.subject_or_areas
    fill_in "Upload cv", with: @application_form.upload_cv
    click_on "Update Application form"

    assert_text "Application form was successfully updated"
    click_on "Back"
  end

  test "destroying a Application form" do
    visit application_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application form was successfully destroyed"
  end
end
