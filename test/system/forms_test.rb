require "application_system_test_case"

class FormsTest < ApplicationSystemTestCase
  setup do
    @form = forms(:one)
  end

  test "visiting the index" do
    visit forms_url
    assert_selector "h1", text: "Forms"
  end

  test "creating a Form" do
    visit forms_url
    click_on "New Form"

    fill_in "Company", with: @form.company_id
    fill_in "Form field 1", with: @form.form_field_1
    fill_in "Form field 2", with: @form.form_field_2
    fill_in "Form field 3", with: @form.form_field_3
    click_on "Create Form"

    assert_text "Form was successfully created"
    click_on "Back"
  end

  test "updating a Form" do
    visit forms_url
    click_on "Edit", match: :first

    fill_in "Company", with: @form.company_id
    fill_in "Form field 1", with: @form.form_field_1
    fill_in "Form field 2", with: @form.form_field_2
    fill_in "Form field 3", with: @form.form_field_3
    click_on "Update Form"

    assert_text "Form was successfully updated"
    click_on "Back"
  end

  test "destroying a Form" do
    visit forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form was successfully destroyed"
  end
end
