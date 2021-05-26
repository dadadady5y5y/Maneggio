require "test_helper"

class CavallisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cavalli = cavallis(:one)
  end

  test "should get index" do
    get cavallis_url
    assert_response :success
  end

  test "should get new" do
    get new_cavalli_url
    assert_response :success
  end

  test "should create cavalli" do
    assert_difference('Cavalli.count') do
      post cavallis_url, params: { cavalli: { descrizione: @cavalli.descrizione, età: @cavalli.età, nome: @cavalli.nome } }
    end

    assert_redirected_to cavalli_url(Cavalli.last)
  end

  test "should show cavalli" do
    get cavalli_url(@cavalli)
    assert_response :success
  end

  test "should get edit" do
    get edit_cavalli_url(@cavalli)
    assert_response :success
  end

  test "should update cavalli" do
    patch cavalli_url(@cavalli), params: { cavalli: { descrizione: @cavalli.descrizione, età: @cavalli.età, nome: @cavalli.nome } }
    assert_redirected_to cavalli_url(@cavalli)
  end

  test "should destroy cavalli" do
    assert_difference('Cavalli.count', -1) do
      delete cavalli_url(@cavalli)
    end

    assert_redirected_to cavallis_url
  end
end
