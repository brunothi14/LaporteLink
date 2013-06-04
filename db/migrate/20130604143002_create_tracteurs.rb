class CreateTracteurs < ActiveRecord::Migration
  def change
    create_table :tracteurs do |t|

      t.timestamps
    end
  end
end
