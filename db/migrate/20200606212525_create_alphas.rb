class CreateAlphas < ActiveRecord::Migration[6.0]
  def change
    create_table :alphas do |t|
      t.string :title
      t.string :string
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
