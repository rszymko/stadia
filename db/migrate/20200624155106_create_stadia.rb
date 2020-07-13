class CreateStadia < ActiveRecord::Migration[6.0]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :image_file

      t.timestamps
    end
  end
end
