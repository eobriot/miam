class CreateAliments < ActiveRecord::Migration
  def self.up
    create_table :aliments do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :aliments
  end
end
