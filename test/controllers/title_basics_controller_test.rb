require 'test_helper'

class TitleBasicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title_basic = title_basics(:one)
  end

  test "should get index" do
    get title_basics_url
    assert_response :success
  end

  test "should get new" do
    get new_title_basic_url
    assert_response :success
  end

  test "should create title_basic" do
    assert_difference('TitleBasic.count') do
      post title_basics_url, params: { title_basic: { end_year: @title_basic.end_year, genres: @title_basic.genres, is_adult: @title_basic.is_adult, original_title: @title_basic.original_title, primary_title: @title_basic.primary_title, runtime_minutes: @title_basic.runtime_minutes, start_year: @title_basic.start_year, tconst: @title_basic.tconst, title_type: @title_basic.title_type } }
    end

    assert_redirected_to title_basic_url(TitleBasic.last)
  end

  test "should show title_basic" do
    get title_basic_url(@title_basic)
    assert_response :success
  end

  test "should get edit" do
    get edit_title_basic_url(@title_basic)
    assert_response :success
  end

  test "should update title_basic" do
    patch title_basic_url(@title_basic), params: { title_basic: { end_year: @title_basic.end_year, genres: @title_basic.genres, is_adult: @title_basic.is_adult, original_title: @title_basic.original_title, primary_title: @title_basic.primary_title, runtime_minutes: @title_basic.runtime_minutes, start_year: @title_basic.start_year, tconst: @title_basic.tconst, title_type: @title_basic.title_type } }
    assert_redirected_to title_basic_url(@title_basic)
  end

  test "should destroy title_basic" do
    assert_difference('TitleBasic.count', -1) do
      delete title_basic_url(@title_basic)
    end

    assert_redirected_to title_basics_url
  end
end
