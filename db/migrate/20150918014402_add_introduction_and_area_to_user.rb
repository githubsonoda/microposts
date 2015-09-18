class AddIntroductionAndAreaToUser < ActiveRecord::Migration
  def change
    add_column :users, :introduction, :string
    add_column :users, :area, :string
  end
end
