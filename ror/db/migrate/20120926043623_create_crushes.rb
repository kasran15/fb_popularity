class CreateCrushes < ActiveRecord::Migration
  def change
    create_table :crushes do |t|
      t.string :user
      t.string :crush

      t.timestamps
    end
  end
end
