class CreateTableTeamSport < ActiveRecord::Migration
   def self.up
    create_table :team_sports do |t|
      t.integer :team_id, :null=>false
      t.integer :sport_id, :null=>false
      t.boolean :is_deleted, :default=>false
      t.boolean :delta, :null=>false, :default=>true
      t.integer :creator_id
      t.integer :updater_id
      t.integer :deleter_id
      t.timestamps
    end
    add_index :team_sports, [:team_id,:sport_id], :unique=>true
    add_index :team_sports, :creator_id
    add_index :team_sports, :updater_id    
    
  end

  def self.down
    drop_table :team_sports
  end
end
