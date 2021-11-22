require "application_system_test_case"

class InformationTest < ApplicationSystemTestCase
  setup do
    @information = information(:one)
  end

  test "visiting the index" do
    visit information_url
    assert_selector "h1", text: "Information"
  end

  test "creating a Information" do
    visit information_url
    click_on "New Information"

    fill_in "Address", with: @information.address
    fill_in "District", with: @information.district
    fill_in "Infection", with: @information.infection
    fill_in "Info", with: @information.info
    fill_in "Name", with: @information.name
    fill_in "News", with: @information.news
    fill_in "Province", with: @information.province
    fill_in "Publication", with: @information.publication
    fill_in "Status", with: @information.status
    fill_in "Yob", with: @information.yob
    click_on "Create Information"

    assert_text "Information was successfully created"
    click_on "Back"
  end

  test "updating a Information" do
    visit information_url
    click_on "Edit", match: :first

    fill_in "Address", with: @information.address
    fill_in "District", with: @information.district
    fill_in "Infection", with: @information.infection
    fill_in "Info", with: @information.info
    fill_in "Name", with: @information.name
    fill_in "News", with: @information.news
    fill_in "Province", with: @information.province
    fill_in "Publication", with: @information.publication
    fill_in "Status", with: @information.status
    fill_in "Yob", with: @information.yob
    click_on "Update Information"

    assert_text "Information was successfully updated"
    click_on "Back"
  end

  test "destroying a Information" do
    visit information_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Information was successfully destroyed"
  end
end
