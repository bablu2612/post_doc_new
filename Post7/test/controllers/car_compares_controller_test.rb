require "test_helper"

class CarComparesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_compare = car_compares(:one)
  end

  test "should get index" do
    get car_compares_url
    assert_response :success
  end

  test "should get new" do
    get new_car_compare_url
    assert_response :success
  end

  test "should create car_compare" do
    assert_difference('CarCompare.count') do
      post car_compares_url, params: { car_compare: { Mileage: @car_compare.Mileage, car_id: @car_compare.car_id, days: @car_compare.days, price: @car_compare.price } }
    end

    assert_redirected_to car_compare_url(CarCompare.last)
  end

  test "should show car_compare" do
    get car_compare_url(@car_compare)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_compare_url(@car_compare)
    assert_response :success
  end

  test "should update car_compare" do
    patch car_compare_url(@car_compare), params: { car_compare: { Mileage: @car_compare.Mileage, car_id: @car_compare.car_id, days: @car_compare.days, price: @car_compare.price } }
    assert_redirected_to car_compare_url(@car_compare)
  end

  test "should destroy car_compare" do
    assert_difference('CarCompare.count', -1) do
      delete car_compare_url(@car_compare)
    end

    assert_redirected_to car_compares_url
  end
end
