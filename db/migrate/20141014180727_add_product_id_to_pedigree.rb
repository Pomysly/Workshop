class AddProductIdToPedigree < ActiveRecord::Migration
  def change
    add_column :pedigrees, :product_id, :integer
  end
end
