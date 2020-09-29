class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :abbreviation
      t.string :name

      t.timestamps
    end
  end
end
