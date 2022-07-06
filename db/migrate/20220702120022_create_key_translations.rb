class CreateKeyTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :key_translations do |t|
      t.belongs_to :origin_key
      t.string :language
      t.text :translation
      t.string :status

      t.timestamps
    end
  end
end
