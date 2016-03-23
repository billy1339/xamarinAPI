class CreateThumbsDowns < ActiveRecord::Migration
  def change
    create_table :thumbs_downs do |t|
      t.integer :voteNumber

      t.timestamps null: false
    end
  end
end
