require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Askprice", with: @car.askprice
    fill_in "Body", with: @car.body
    fill_in "Make", with: @car.make
    fill_in "Miles", with: @car.miles
    fill_in "Model", with: @car.model
    fill_in "Name", with: @car.name
    fill_in "Phone", with: @car.phone
    fill_in "Vin", with: @car.vin
    fill_in "Year", with: @car.year
    fill_in "Zipcode", with: @car.zipcode
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    fill_in "Askprice", with: @car.askprice
    fill_in "Body", with: @car.body
    fill_in "Make", with: @car.make
    fill_in "Miles", with: @car.miles
    fill_in "Model", with: @car.model
    fill_in "Name", with: @car.name
    fill_in "Phone", with: @car.phone
    fill_in "Vin", with: @car.vin
    fill_in "Year", with: @car.year
    fill_in "Zipcode", with: @car.zipcode
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
