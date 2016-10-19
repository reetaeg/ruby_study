class CreateSystemCodes < ActiveRecord::Migration
  def change
    create_table :system_codes do |t|
      t.string :code_type
      t.string :code
      t.string :name
      t.references :system_code, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
