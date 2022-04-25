class CreateTableTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :isComplete, default: false

      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
