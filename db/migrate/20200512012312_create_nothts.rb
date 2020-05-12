class CreateNothts < ActiveRecord::Migration[6.0]
  def change
    create_table :nothts do |t|

      t.timestamps
    end
  end
end
