class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
