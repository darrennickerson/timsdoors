require "application_system_test_case"

class InventoriesTest < ApplicationSystemTestCase
  setup do
    @inventory = inventories(:one)
  end

  test "visiting the index" do
    visit inventories_url
    assert_selector "h1", text: "Inventories"
  end

  test "creating a Inventory" do
    visit inventories_url
    click_on "New Inventory"

    fill_in "Category", with: @inventory.category_id
    fill_in "Description", with: @inventory.description
    fill_in "Name", with: @inventory.name
    fill_in "Price cost", with: @inventory.price_cost
    fill_in "Price markup", with: @inventory.price_markup
    check "Restock" if @inventory.restock
    fill_in "Units", with: @inventory.units
    click_on "Create Inventory"

    assert_text "Inventory was successfully created"
    click_on "Back"
  end

  test "updating a Inventory" do
    visit inventories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @inventory.category_id
    fill_in "Description", with: @inventory.description
    fill_in "Name", with: @inventory.name
    fill_in "Price cost", with: @inventory.price_cost
    fill_in "Price markup", with: @inventory.price_markup
    check "Restock" if @inventory.restock
    fill_in "Units", with: @inventory.units
    click_on "Update Inventory"

    assert_text "Inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory" do
    visit inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory was successfully destroyed"
  end
end
