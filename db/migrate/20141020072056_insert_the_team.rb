class InsertTheTeam < ActiveRecord::Migration
   def self.up
    create_table :teams do |t|
      t.column :sport_id, "integer unsigned"
      t.column :parent_id, "integer unsigned"
      t.string :parent_name, :limit=>50
      t.string :name, :limit=>50, :null=>false
      t.string :short_name, :limit=>25
      t.string :description, :limit=>255
      t.string :mascot, :limit=>50
      t.column :school_id, "integer unsigned"
      t.column :league_id, "integer unsigned"
      t.column :division_id, "integer unsigned"
      t.column :profile_image_id, "integer unsigned"
      t.string :official_website, :limit=>255
      t.string :tags, :limit=>255

      t.timestamps
    end
    add_index :teams, [:name, :parent_name]
    add_index :teams, :sport_id
    add_index :teams, :division_id
    add_index :teams, :league_id
    add_index :teams, :school_id
    add_index :teams, :parent_id
    
  end

  def self.down
    drop_table :teams
  end
end
