class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :form_field_1
      t.string :form_field_2
      t.string :form_field_3
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
