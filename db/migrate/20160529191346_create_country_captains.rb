class CreateCountryCaptains < ActiveRecord::Migration
  def change
    create_table :country_captains do |t|
      t.text :ask_me
      t.text :summer_internship
      t.text :previous_industry
      t.string :linkedin
      t.text :email
      t.text :undergrad
      t.string :picture
      t.text :name

      t.timestamps

    end
  end
end
