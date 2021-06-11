class AddAbbvrevToStateData < ActiveRecord::Migration[6.1]
  def change
    add_column :state_data, :abbrev, :string
  end
end
