class CreateTableProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title

      t.timestamps
    end
  end
end
