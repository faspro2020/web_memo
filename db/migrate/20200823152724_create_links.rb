class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :name
      t.text :url
      t.text :comment
      t.timestamps
    end
  end
end
