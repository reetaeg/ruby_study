class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :agency_type
      t.boolean :is_used
      t.string :area
      t.string :edi_code
      t.string :email
      t.string :phone
      t.string :owner_name
      t.string :biz_number

      t.timestamps null: false
    end
  end
end
