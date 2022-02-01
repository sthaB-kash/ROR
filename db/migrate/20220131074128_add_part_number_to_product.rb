class AddPartNumberToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :part_number, :string
  end
end
