class CreateNewaucs < ActiveRecord::Migration[6.1]
  def change
    create_table :newaucs do |t|
      t.string :hashaddy

      t.timestamps
    end
  end
end
