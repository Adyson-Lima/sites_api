class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :url
      t.string :descrition

      t.timestamps
    end
  end
end
