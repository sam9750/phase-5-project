require "test_helper"

class SubmissionControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get submission_title_url
    assert_response :success
  end

  test "should get price:integer" do
    get submission_price:integer_url
    assert_response :success
  end

  test "should get stripe_payment_id:string" do
    get submission_stripe_payment_id:string_url
    assert_response :success
  end

  test "should get status:string" do
    get submission_status:string_url
    assert_response :success
  end
end
