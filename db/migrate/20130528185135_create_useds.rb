class CreateUseds < ActiveRecord::Migration
  def change
    create_table :useds do |t|
      t.decimal :lsp
      t.decimal :profit
      t.decimal :detail
      t.decimal :finance

      t.timestamps
    end
  end
end
