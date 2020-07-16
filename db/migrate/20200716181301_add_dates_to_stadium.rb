class AddDatesToStadium < ActiveRecord::Migration[6.0]
  def change
    add_column :stadia, :build_date, :date
    add_column :stadia, :demolition_date, :date
  end
end
