class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :image_url
      
      t.timestamps
    end
  end
end