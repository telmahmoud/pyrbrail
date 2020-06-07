require 'test_helper'

class AlphasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha = alphas(:one)
  end

  test "should get index" do
    get alphas_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_url
    assert_response :success
  end

  test "should create alpha" do
    assert_difference('Alpha.count') do
      post alphas_url, params: { alpha: { description: @alpha.description, string: @alpha.string, text: @alpha.text, title: @alpha.title } }
    end

    assert_redirected_to alpha_url(Alpha.last)
  end

  test "should show alpha" do
    get alpha_url(@alpha)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_url(@alpha)
    assert_response :success
  end

  test "should update alpha" do
    patch alpha_url(@alpha), params: { alpha: { description: @alpha.description, string: @alpha.string, text: @alpha.text, title: @alpha.title } }
    assert_redirected_to alpha_url(@alpha)
  end

  test "should destroy alpha" do
    assert_difference('Alpha.count', -1) do
      delete alpha_url(@alpha)
    end

    assert_redirected_to alphas_url
  end
end
