class AddOrganizationReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :organization
  end
end
