require "application_system_test_case"

class CarComparesTest < ApplicationSystemTestCase
  setup do
    @car_compare = car_compares(:one)
  end

  test "visiting the index" do
    visit car_compares_url
    assert_selector "h1", text: "Car Compares"
  end

  test "creating a Car compare" do
    visit car_compares_url
    click_on "New Car Compare"

    fill_in "Mileage", with: @car_compare.Mileage
    fill_in "Car", with: @car_compare.car_id
    fill_in "Days", with: @car_compare.days
    fill_in "Price", with: @car_compare.price
    click_on "Create Car compare"

    assert_text "Car compare was successfully created"
    click_on "Back"
  end

  test "updating a Car compare" do
    visit car_compares_url
    click_on "Edit", match: :first

    fill_in "Mileage", with: @car_compare.Mileage
    fill_in "Car", with: @car_compare.car_id
    fill_in "Days", with: @car_compare.days
    fill_in "Price", with: @car_compare.price
    click_on "Update Car compare"

    assert_text "Car compare was successfully updated"
    click_on "Back"
  end

  test "destroying a Car compare" do
    visit car_compares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car compare was successfully destroyed"
  end
end
