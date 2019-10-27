require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Birth year", with: @player.birth_year
    fill_in "Death year", with: @player.death_year
    fill_in "Known for titles", with: @player.known_for_titles
    fill_in "Nconst", with: @player.nconst
    fill_in "Primary name", with: @player.primary_name
    fill_in "Primary profession", with: @player.primary_profession
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Birth year", with: @player.birth_year
    fill_in "Death year", with: @player.death_year
    fill_in "Known for titles", with: @player.known_for_titles
    fill_in "Nconst", with: @player.nconst
    fill_in "Primary name", with: @player.primary_name
    fill_in "Primary profession", with: @player.primary_profession
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
