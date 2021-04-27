class CreateBhistories < ActiveRecord::Migration
  def change
    create_table :bhistories do |t|
      t.string :ayear
      t.string :amonth
      t.string :acontent
      t.string :uid
      t.string :uipaddr
      t.string :etc1
      t.string :etc2
      t.string :etc3

      t.timestamps null: false
    end
  end
end
