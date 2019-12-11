class AddContentToIssues < ActiveRecord::Migration[6.0]
  def change
    add_column :issues, :content, :text
  end
end
