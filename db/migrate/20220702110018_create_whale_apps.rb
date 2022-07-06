class CreateWhaleApps < ActiveRecord::Migration[7.0]
  def change
    create_table :whale_apps do |t|
      t.string :app_id
      t.string :name
      t.string :icon_url

      t.timestamps
    end
  end
end
