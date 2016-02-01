class CreateBaseballs < ActiveRecord::Migration
  def change
    create_table :baseballs do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
