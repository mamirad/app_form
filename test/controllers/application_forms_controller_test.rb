require 'test_helper'

class ApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_form = application_forms(:one)
  end

  test "should get index" do
    get application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_application_form_url
    assert_response :success
  end

  test "should create application_form" do
    assert_difference('ApplicationForm.count') do
      post application_forms_url, params: { application_form: { address: @application_form.address, age: @application_form.age, apply_for: @application_form.apply_for, cnic: @application_form.cnic, gender: @application_form.gender, highest_education: @application_form.highest_education, mobile_number: @application_form.mobile_number, name: @application_form.name, qualitative_research_experience: @application_form.qualitative_research_experience, subject_or_areas: @application_form.subject_or_areas, upload_cv: @application_form.upload_cv } }
    end

    assert_redirected_to application_form_url(ApplicationForm.last)
  end

  test "should show application_form" do
    get application_form_url(@application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_form_url(@application_form)
    assert_response :success
  end

  test "should update application_form" do
    patch application_form_url(@application_form), params: { application_form: { address: @application_form.address, age: @application_form.age, apply_for: @application_form.apply_for, cnic: @application_form.cnic, gender: @application_form.gender, highest_education: @application_form.highest_education, mobile_number: @application_form.mobile_number, name: @application_form.name, qualitative_research_experience: @application_form.qualitative_research_experience, subject_or_areas: @application_form.subject_or_areas, upload_cv: @application_form.upload_cv } }
    assert_redirected_to application_form_url(@application_form)
  end

  test "should destroy application_form" do
    assert_difference('ApplicationForm.count', -1) do
      delete application_form_url(@application_form)
    end

    assert_redirected_to application_forms_url
  end
end
