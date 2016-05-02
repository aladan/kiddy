class AddAttachmentsToHistory < ActiveRecord::Migration
  def change
    add_attachment :histories, :attachment
  end
end
