class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :original_link
      t.string :random_generated_string

      t.timestamps
    end
  end
end
