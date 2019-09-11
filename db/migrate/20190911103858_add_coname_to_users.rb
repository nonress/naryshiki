class AddConameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coname, :string
  end
end
