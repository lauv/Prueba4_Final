class CreateEnterprises < ActiveRecord::Migration[5.0]
  def change
    create_table :enterprises do |t|
      t.string :name

      t.timestamps
    end
  end
end
