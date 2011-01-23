class CreateConditionnements < ActiveRecord::Migration
  def self.up
    create_table :conditionnements do |t|
      t.string :nom
      t.integer :quantite
      t.integer :aliment_id

      t.timestamps
    end
  end

  def self.down
    drop_table :conditionnements
  end
end
