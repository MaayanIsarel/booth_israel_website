class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.boolean :display_nothing
      t.boolean :display_linkedin
      t.boolean :display_email
      t.boolean :display_location
      t.boolean :display_phone
      t.integer :user_id
      t.string :name
      t.integer :classof
      t.string :user_type
      t.string :current_employer
      t.string :past_employers
      t.string :current_location
      t.string :booth_email
      t.string :home_email
      t.string :linkedin
      t.string :phone
      t.string :program

      t.timestamps

    end
  end
end
