class AddNounNumberToNewauc < ActiveRecord::Migration[6.1]
  def change
    add_column :newaucs, :nounumber, :integer
  end
end
