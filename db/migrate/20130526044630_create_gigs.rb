class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :company
      t.string :location
      t.string :commitment
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
