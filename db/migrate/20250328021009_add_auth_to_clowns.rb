class AddAuthToClowns < ActiveRecord::Migration[7.2]
  def change
    add_column :clowns, :email, :string
    add_column :clowns, :password_digest, :string
  end
end
