require "test_helper"

class InventorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inventorys_index_url
    assert_response :success
  end

  test "should get show" do
    get inventorys_show_url
    assert_response :success
  end

  test "should get new" do
    get inventorys_new_url
    assert_response :success
  end

  test "should get edit" do
    get inventorys_edit_url
    assert_response :success
  end

  test "should get list" do
    get inventorys_list_url
    assert_response :success
  end

  test "should get menu" do
    get inventorys_menu_url
    assert_response :success
  end

  test "should get place" do
    get inventorys_place_url
    assert_response :success
  end
end
