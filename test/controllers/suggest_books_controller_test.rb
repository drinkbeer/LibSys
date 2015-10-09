require 'test_helper'

class SuggestBooksControllerTest < ActionController::TestCase
  setup do
    @suggest_book = suggest_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suggest_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suggest_book" do
    assert_difference('SuggestBook.count') do
      post :create, suggest_book: {  }
    end

    assert_redirected_to suggest_book_path(assigns(:suggest_book))
  end

  test "should show suggest_book" do
    get :show, id: @suggest_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suggest_book
    assert_response :success
  end

  test "should update suggest_book" do
    patch :update, id: @suggest_book, suggest_book: {  }
    assert_redirected_to suggest_book_path(assigns(:suggest_book))
  end

  test "should destroy suggest_book" do
    assert_difference('SuggestBook.count', -1) do
      delete :destroy, id: @suggest_book
    end

    assert_redirected_to suggest_books_path
  end
end
