class AddCorseReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :course
  end
end
