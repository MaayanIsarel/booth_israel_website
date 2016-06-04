class CreateRegistrationForMailingLists < ActiveRecord::Migration
  def change
    create_table :registration_for_mailing_lists do |t|
      t.integer :class_of
      t.text :phone
      t.text :email
      t.text :current_company
      t.text :current_industry
      t.text :full_name

      t.timestamps

    end
  end
end
