class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.string :status
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
