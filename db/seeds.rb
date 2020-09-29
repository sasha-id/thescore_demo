# frozen_string_literal: true

require 'open-uri'

JSON.parse(URI.open('https://raw.githubusercontent.com/tsicareers/nfl-rushing/master/rushing.json').read).each do |p|
  team = Team.first_or_create!(abbreviation: p['Team'])
  map = PLAYERS_FIELD_MAP.map { |f| [f[1], f[0]] }.to_h # Reverse map
  team.players.create!(p.except('Team').map { |k, v| [map[k], v] }.to_h)
end
