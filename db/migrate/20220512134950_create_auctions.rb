class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.string :hash
      t.integer :block
      t.datetime :when

      t.timestamps
    end
  end
end
