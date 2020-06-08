class AddUserIdToAlphas < ActiveRecord::Migration[6.0]
  def change
    add_column :alphas , :user_id , :integer
  end
end
