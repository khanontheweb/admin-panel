require "application_system_test_case"

class TestScaffoldsTest < ApplicationSystemTestCase
  setup do
    @test_scaffold = test_scaffolds(:one)
  end

  test "visiting the index" do
    visit test_scaffolds_url
    assert_selector "h1", text: "Test Scaffolds"
  end

  test "creating a Test scaffold" do
    visit test_scaffolds_url
    click_on "New Test Scaffold"

    fill_in "Email", with: @test_scaffold.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Test scaffold"

    assert_text "Test scaffold was successfully created"
    click_on "Back"
  end

  test "updating a Test scaffold" do
    visit test_scaffolds_url
    click_on "Edit", match: :first

    fill_in "Email", with: @test_scaffold.email
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Test scaffold"

    assert_text "Test scaffold was successfully updated"
    click_on "Back"
  end

  test "destroying a Test scaffold" do
    visit test_scaffolds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test scaffold was successfully destroyed"
  end
end
