class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :title
      t.text :discription
      t.integer :leader_id

      t.timestamps
    end
  end
end
