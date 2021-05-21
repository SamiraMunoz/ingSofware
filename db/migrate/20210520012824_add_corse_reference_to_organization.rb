class AddCorseReferenceToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_reference :organizations, :course
  end
end
