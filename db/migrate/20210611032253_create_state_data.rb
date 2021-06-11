class CreateStateData < ActiveRecord::Migration[6.1]
  def change
    create_table :state_data do |t|
      t.string :state
      t.integer :median_household_income
      t.decimal :share_unemployed_seasonal, precision: 4, scale: 3
      t.decimal :share_population_in_metro_areas, precision: 3, scale: 2
      t.decimal :share_population_with_high_school_degree, precision: 4, scale: 3

      t.timestamps
    end
  end
end
