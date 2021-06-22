class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|

      t.timestamps
    end
  end
end
