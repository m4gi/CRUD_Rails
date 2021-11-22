class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :name
      t.string :infor
      t.text :address
      t.string :info
      t.string :status
      t.string :infection
      t.string :news
      t.string :publication
      t.string :district
      t.string :province
      t.string :yob

      t.timestamps
    end
  end
end
