require 'test_helper'

module Kebapage
  class PhotosControllerTest < ActionController::TestCase
    test "should get create" do
      get :create
      assert_response :success
    end

    test "should get destroy" do
      get :destroy
      assert_response :success
    end

  end
end
