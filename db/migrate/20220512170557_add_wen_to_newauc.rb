class AddWenToNewauc < ActiveRecord::Migration[6.1]
  def change
    add_column :newaucs, :wen, :datetime
  end
end
