class CreateAuthTokens < ActiveRecord::Migration
  def change
    create_table :auth_tokens do |t|
      t.string :fbId
      t.string :token

      t.timestamps
    end
  end
end
