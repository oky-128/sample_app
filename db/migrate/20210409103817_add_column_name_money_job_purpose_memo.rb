class AddColumnNameMoneyJobPurposeMemo < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :name, :string
    add_column :posts, :money, :integer
    add_column :posts, :job, :string
    add_column :posts, :purpose, :string
    add_column :posts, :memo, :string
  end
end
