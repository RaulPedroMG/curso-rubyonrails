require 'test_helper'
class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path
    assert_response :success
    assett_select '.product', 2
  end
  test 'render a details product page' do

  end
end