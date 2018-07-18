class CreateCoordinators < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinators do |t|
      t.string :nome
      t.string :matricula, unique: true
      t.string :senha
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
