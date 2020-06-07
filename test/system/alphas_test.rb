require "application_system_test_case"

class AlphasTest < ApplicationSystemTestCase
  setup do
    @alpha = alphas(:one)
  end

  test "visiting the index" do
    visit alphas_url
    assert_selector "h1", text: "Alphas"
  end

  test "creating a Alpha" do
    visit alphas_url
    click_on "New Alpha"

    fill_in "Description", with: @alpha.description
    fill_in "String", with: @alpha.string
    fill_in "Text", with: @alpha.text
    fill_in "Title", with: @alpha.title
    click_on "Create Alpha"

    assert_text "Alpha was successfully created"
    click_on "Back"
  end

  test "updating a Alpha" do
    visit alphas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @alpha.description
    fill_in "String", with: @alpha.string
    fill_in "Text", with: @alpha.text
    fill_in "Title", with: @alpha.title
    click_on "Update Alpha"

    assert_text "Alpha was successfully updated"
    click_on "Back"
  end

  test "destroying a Alpha" do
    visit alphas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alpha was successfully destroyed"
  end
end
