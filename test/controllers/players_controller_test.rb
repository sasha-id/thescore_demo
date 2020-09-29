require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { att: @player.att, attg: @player.attg, avg: @player.avg, fum: @player.fum, lng: @player.lng, pos: @player.pos, r20ye: @player.r20ye, r40ye: @player.r40ye, rfd: @player.rfd, rfdp: @player.rfdp, td: @player.td, team_id: @player.team_id, yds: @player.yds, ydsg: @player.ydsg } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { att: @player.att, attg: @player.attg, avg: @player.avg, fum: @player.fum, lng: @player.lng, pos: @player.pos, r20ye: @player.r20ye, r40ye: @player.r40ye, rfd: @player.rfd, rfdp: @player.rfdp, td: @player.td, team_id: @player.team_id, yds: @player.yds, ydsg: @player.ydsg } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
