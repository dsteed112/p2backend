class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :happening
      t.string :location
      t.integer :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
