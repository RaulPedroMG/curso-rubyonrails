require 'test_helper'
class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path
    assert_response :success
    assert_select '.product', 2
  end
  test 'render a details product page' do
    get product_path(products(:iphone14).id) # el .id es opcional
    assert_response :success
    assert_select '.title', 'iPhone 14'
    assert_select '.description', 'En buen estado'
    assert_select '.price', '4000'
  end
end