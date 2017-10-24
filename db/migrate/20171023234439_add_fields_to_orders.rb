class AddFieldsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :buyer_id, :interger
    add_column :orders, :seller_id, :interger
  end
end
