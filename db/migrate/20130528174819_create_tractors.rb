class CreateTractors < ActiveRecord::Migration
  def change
    create_table :tractors do |t|
      t.string :model
      t.date :year
      t.decimal :bonus
      t.decimal :cost
      t.string :serial
      t.string :stock
      t.date :arrival

      t.timestamps
    end
  end
end
