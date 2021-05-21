class AddEcoinsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ecoins, :float
  end
end
