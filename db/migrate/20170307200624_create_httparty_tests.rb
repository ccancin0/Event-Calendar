class CreateHttpartyTests < ActiveRecord::Migration[5.0]
  def change
    create_table :httparty_tests do |t|

      t.timestamps
    end
  end
end
