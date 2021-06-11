class AddStateCodeToStateData < ActiveRecord::Migration[6.1]
  def change
    add_column :state_data, :state_code, :string
  end
end
