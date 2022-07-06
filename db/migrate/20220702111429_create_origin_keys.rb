class CreateOriginKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :origin_keys do |t|
      t.belongs_to :whale_app
      t.string :key
      t.text :origin

      t.timestamps
    end
  end
end
