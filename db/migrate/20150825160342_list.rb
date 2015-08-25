class List < ActiveRecord::Migration
  def change
    create_table :list do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
