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

    fill_in "Att", with: @player.att
    fill_in "Attg", with: @player.attg
    fill_in "Avg", with: @player.avg
    fill_in "Fum", with: @player.fum
    fill_in "Lng", with: @player.lng
    fill_in "Pos", with: @player.pos
    fill_in "R20ye", with: @player.r20ye
    fill_in "R40ye", with: @player.r40ye
    fill_in "Rfd", with: @player.rfd
    fill_in "Rfdp", with: @player.rfdp
    fill_in "Td", with: @player.td
    fill_in "Team", with: @player.team_id
    fill_in "Yds", with: @player.yds
    fill_in "Ydsg", with: @player.ydsg
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Att", with: @player.att
    fill_in "Attg", with: @player.attg
    fill_in "Avg", with: @player.avg
    fill_in "Fum", with: @player.fum
    fill_in "Lng", with: @player.lng
    fill_in "Pos", with: @player.pos
    fill_in "R20ye", with: @player.r20ye
    fill_in "R40ye", with: @player.r40ye
    fill_in "Rfd", with: @player.rfd
    fill_in "Rfdp", with: @player.rfdp
    fill_in "Td", with: @player.td
    fill_in "Team", with: @player.team_id
    fill_in "Yds", with: @player.yds
    fill_in "Ydsg", with: @player.ydsg
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
