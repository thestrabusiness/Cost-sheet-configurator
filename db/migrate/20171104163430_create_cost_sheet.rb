class CreateCostSheet < ActiveRecord::Migration[5.1]
  def change
    create_table :cost_sheets do |t|
      t.string :project_number
      t.string :customer_name
      t.money :default_labor_unit_cost
      t.decimal :default_material_markup

      t.string :created_by
      t.string :last_modified_by

      t.timestamps
    end

    create_table :configs do |t|
      t.references :cost_sheet
      t.string :name
    end

    create_table :config_items do |t|
      t.references :config
      t.string :description
      t.integer :quantity
      t.decimal :labor_hours, default: 0
      t.money :unit_cost
      t.decimal :markup_percentage
    end
  end
end
