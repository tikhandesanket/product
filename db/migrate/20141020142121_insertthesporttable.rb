class Insertthesporttable < ActiveRecord::Migration
 def self.up
 create_table :sports do |t|
      t.string :name, :limit=>50, :null=>false
      t.column :sport_family_id, "integer unsigned"
      t.column :sport_family_name, :string, :limit=>50, :null=>false
      t.string :other_names, :limit=>255
      t.string :description, :limit=>255
      t.string :tags, :limit=>255
      t.string :participant_type, :limit=>20
      t.column :facility_type_id, "integer unsigned"
      t.string :rules, :limit=>1000
      t.column :is_deleted, :boolean, :default=>0
      t.timestamps
    end
    add_index :sports, :sport_family_id
    add_index :sports, :name
  end

  def self.down
  end
end


