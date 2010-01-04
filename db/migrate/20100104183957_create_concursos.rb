class CreateConcursos < ActiveRecord::Migration
  def self.up
    create_table :concursos do |t|
      t.integer :numero
      t.integer :d1
      t.integer :d2
      t.integer :d3
      t.integer :d4
      t.integer :d5
      t.integer :d6

      t.timestamps
    end
  end

  def self.down
    drop_table :concursos
  end
end
