require "application_system_test_case"

class CohortsTest < ApplicationSystemTestCase
  setup do
    @cohort = cohorts(:one)
  end

  test "visiting the index" do
    visit cohorts_url
    assert_selector "h1", text: "Cohorts"
  end

  test "creating a Cohort" do
    visit cohorts_url
    click_on "New Cohort"

    fill_in "End date", with: @cohort.end_date
    fill_in "Name", with: @cohort.name
    fill_in "Start date", with: @cohort.start_date
    click_on "Create Cohort"

    assert_text "Cohort was successfully created"
    click_on "Back"
  end

  test "updating a Cohort" do
    visit cohorts_url
    click_on "Edit", match: :first

    fill_in "End date", with: @cohort.end_date
    fill_in "Name", with: @cohort.name
    fill_in "Start date", with: @cohort.start_date
    click_on "Update Cohort"

    assert_text "Cohort was successfully updated"
    click_on "Back"
  end

  test "destroying a Cohort" do
    visit cohorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cohort was successfully destroyed"
  end
end
