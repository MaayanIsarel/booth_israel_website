class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :link
      t.integer :year
      t.integer :rank
      t.text :report_name

      t.timestamps

    end
  end
end
