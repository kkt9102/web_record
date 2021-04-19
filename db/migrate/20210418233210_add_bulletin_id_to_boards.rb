class AddBulletinIdToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :bulletin_id, :integer
    add_index :boards, :bulletin_id
  end
end
