class Song < ApplicationRecord
  validate :check_record_limit, on: :create
  
  private

  def check_record_limit
    if Song.count >= 2
      errors.add(:base, "レコード数が上限に達しています")
    end
  end
end
