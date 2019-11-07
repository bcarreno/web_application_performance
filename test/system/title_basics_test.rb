require "application_system_test_case"

class TitleBasicsTest < ApplicationSystemTestCase
  setup do
    @title_basic = title_basics(:one)
  end

  test "visiting the index" do
    visit title_basics_url
    assert_selector "h1", text: "Title Basics"
  end

  test "creating a Title basic" do
    visit title_basics_url
    click_on "New Title Basic"

    fill_in "End year", with: @title_basic.end_year
    fill_in "Genres", with: @title_basic.genres
    fill_in "Is adult", with: @title_basic.is_adult
    fill_in "Original title", with: @title_basic.original_title
    fill_in "Primary title", with: @title_basic.primary_title
    fill_in "Runtime minutes", with: @title_basic.runtime_minutes
    fill_in "Start year", with: @title_basic.start_year
    fill_in "Tconst", with: @title_basic.tconst
    fill_in "Title type", with: @title_basic.title_type
    click_on "Create Title basic"

    assert_text "Title basic was successfully created"
    click_on "Back"
  end

  test "updating a Title basic" do
    visit title_basics_url
    click_on "Edit", match: :first

    fill_in "End year", with: @title_basic.end_year
    fill_in "Genres", with: @title_basic.genres
    fill_in "Is adult", with: @title_basic.is_adult
    fill_in "Original title", with: @title_basic.original_title
    fill_in "Primary title", with: @title_basic.primary_title
    fill_in "Runtime minutes", with: @title_basic.runtime_minutes
    fill_in "Start year", with: @title_basic.start_year
    fill_in "Tconst", with: @title_basic.tconst
    fill_in "Title type", with: @title_basic.title_type
    click_on "Update Title basic"

    assert_text "Title basic was successfully updated"
    click_on "Back"
  end

  test "destroying a Title basic" do
    visit title_basics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title basic was successfully destroyed"
  end
end
