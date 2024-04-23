require "test_helper"

class TrainTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_type = train_types(:one)
  end

  test "should get index" do
    get train_types_url
    assert_response :success
  end

  test "should get new" do
    get new_train_type_url
    assert_response :success
  end

  test "should create train_type" do
    assert_difference("TrainType.count") do
      post train_types_url, params: { train_type: { title: @train_type.title } }
    end

    assert_redirected_to train_type_url(TrainType.last)
  end

  test "should show train_type" do
    get train_type_url(@train_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_train_type_url(@train_type)
    assert_response :success
  end

  test "should update train_type" do
    patch train_type_url(@train_type), params: { train_type: { title: @train_type.title } }
    assert_redirected_to train_type_url(@train_type)
  end

  test "should destroy train_type" do
    assert_difference("TrainType.count", -1) do
      delete train_type_url(@train_type)
    end

    assert_redirected_to train_types_url
  end
end
