class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.belongs_to :customer 
      t.belongs_to :item
      t.datetime :sale_date
      #t.timestamps
    end
  end
end
