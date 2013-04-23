class CreateBadges < ActiveRecord::Migration
  def up
    create_table :badge_sets do |t|
      t.string :name, :null => false
      t.string :image

      t.timestamps
    end

    create_table :badges do |t|
      t.string :name, :null => false
      t.string :surname
      t.string :company
      t.string :profession
      t.references :badge_set

      t.timestamps
    end

    add_foreign_key :badges, :badge_sets, :dependent => :delete
    add_index :badges, :badge_set_id
  end

  def down
    drop_table :badges
    drop_table :badge_sets
  end
end
