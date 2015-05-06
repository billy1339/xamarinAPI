class CreateThumbsUps < ActiveRecord::Migration
  def change
    create_table :thumbs_ups do |t|
      t.integer :voteNumber

      t.timestamps null: false
    end
  end
end
