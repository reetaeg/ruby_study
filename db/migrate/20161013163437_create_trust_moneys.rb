class CreateTrustMoneys < ActiveRecord::Migration
  def change
    create_table :trust_moneys do |t|
      t.string :source_type
      t.references :agency, index: true, foreign_key: true
      t.text :etc

      t.timestamps null: false
    end
  end
end
