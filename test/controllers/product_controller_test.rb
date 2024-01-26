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
  test 'render a new product form' do
    get new_product_path
    assert_response :success
    assert_select 'form'
  end
  test 'allow to create a new product' do
    post products_path, params: {
      product: {
        title: 'PC System 74',
        description: 'La pila no funciona',
        price: 6000
      }
    }
    assert_redirected_to products_path
  end
  test 'does not allow to create a new product with empty fields' do
    post products_path, params: {
      product: {
        title: '',
        description: 'La pila no funciona',
        price: 6000
      }
    }
    assert_response :unprocessable_entity
  end
end