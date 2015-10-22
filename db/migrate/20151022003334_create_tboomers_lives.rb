class CreateTboomersLives < ActiveRecord::Migration
  def change
    create_table :tboomers_lives do |t|
      t.string :title
      t.string :active

      t.timestamps null: false
    end
  end
end
