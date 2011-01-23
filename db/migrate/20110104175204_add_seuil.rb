class AddSeuil < ActiveRecord::Migration
  def self.up
    change_table :conditionnements do |t|
      t.integer :seuil
    end
  end

  def self.down
    remove_column :conditionnements, :seuil
  end
end
