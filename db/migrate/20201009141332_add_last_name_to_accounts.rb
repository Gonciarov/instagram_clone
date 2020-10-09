class AddLastNameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :last_name, :string
  end
end
