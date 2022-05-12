class CreateNewauctions < ActiveRecord::Migration[6.1]
  def change
    create_table :newauctions do |t|
      t.string :hash

      t.timestamps
    end
  end
end
