require 'test_helper'

class DogParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_park = dog_parks(:one)
  end

  test "should get index" do
    get dog_parks_url, as: :json
    assert_response :success
  end

  test "should create dog_park" do
    assert_difference('DogPark.count') do
      post dog_parks_url, params: { dog_park: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show dog_park" do
    get dog_park_url(@dog_park), as: :json
    assert_response :success
  end

  test "should update dog_park" do
    patch dog_park_url(@dog_park), params: { dog_park: {  } }, as: :json
    assert_response 200
  end

  test "should destroy dog_park" do
    assert_difference('DogPark.count', -1) do
      delete dog_park_url(@dog_park), as: :json
    end

    assert_response 204
  end
end
