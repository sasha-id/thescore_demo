# frozen_string_literal: true

class PlayersController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  before_action :set_player, only: %i[show edit update destroy]

  def index
    query = Player.includes(:team).all
    query = query.search_by_name(params[:name]) unless params[:name].blank?
    @players = smart_listing_create(:players, query, partial: 'players/listing', page_sizes: [10, 20], default_sort: { 'name': 'asc' })
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def player_params
    params.require(:player).permit(:team_id, :pos, :attg, :att, :yds, :avg, :ydsg, :td, :lng, :rfd, :rfdp, :r20ye, :r40ye, :fum)
  end
end
