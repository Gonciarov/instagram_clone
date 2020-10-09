class AddFirstNameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :first_name, :string
  end
end
