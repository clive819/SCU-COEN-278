class AddOrderToLineitems < ActiveRecord::Migration[6.0]
  def change
    add_reference :lineitems, :order, null: true, foreign_key: true
  end
end
