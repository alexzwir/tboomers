class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :title
      t.string :active

      t.timestamps null: false
    end
  end
end
