# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pg_trgm'

    create_table :players do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :pos
      t.float :attg
      t.float :att
      t.float :yds
      t.float :avg
      t.float :ydsg
      t.float :td
      t.float :lng
      t.float :rfd
      t.float :rfdp
      t.float :r20ye
      t.float :r40ye
      t.float :fum

      t.timestamps
    end

    add_index :players, :name, opclass: :gin_trgm_ops, using: :gin
    add_index :players, :name, name: 'players_name2_idx'
    add_index :players, :td
    add_index :players, :lng
    add_index :players, :yds
  end
end
