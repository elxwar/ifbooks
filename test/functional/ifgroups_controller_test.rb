require 'test_helper'

class IfgroupsControllerTest < ActionController::TestCase
  setup do
    @ifgroup = ifgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ifgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ifgroup" do
    assert_difference('Ifgroup.count') do
      post :create, ifgroup: { address1: @ifgroup.address1, address2: @ifgroup.address2, address3: @ifgroup.address3, county: @ifgroup.county, first_name: @ifgroup.first_name, group1_email: @ifgroup.group1_email, group2_email: @ifgroup.group2_email, invoice_to: @ifgroup.invoice_to, last_name: @ifgroup.last_name, post_code: @ifgroup.post_code, school_name: @ifgroup.school_name, teacher_email: @ifgroup.teacher_email, title: @ifgroup.title, town: @ifgroup.town }
    end

    assert_redirected_to ifgroup_path(assigns(:ifgroup))
  end

  test "should show ifgroup" do
    get :show, id: @ifgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ifgroup
    assert_response :success
  end

  test "should update ifgroup" do
    put :update, id: @ifgroup, ifgroup: { address1: @ifgroup.address1, address2: @ifgroup.address2, address3: @ifgroup.address3, county: @ifgroup.county, first_name: @ifgroup.first_name, group1_email: @ifgroup.group1_email, group2_email: @ifgroup.group2_email, invoice_to: @ifgroup.invoice_to, last_name: @ifgroup.last_name, post_code: @ifgroup.post_code, school_name: @ifgroup.school_name, teacher_email: @ifgroup.teacher_email, title: @ifgroup.title, town: @ifgroup.town }
    assert_redirected_to ifgroup_path(assigns(:ifgroup))
  end

  test "should destroy ifgroup" do
    assert_difference('Ifgroup.count', -1) do
      delete :destroy, id: @ifgroup
    end

    assert_redirected_to ifgroups_path
  end
end
