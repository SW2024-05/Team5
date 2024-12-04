class Student < ApplicationRecord
    belongs_to :school
    belongs_to :fitting
    belongs_to :product
    validate :school_presence
    
    private
    
    def school_presence
      if school_id.blank? && school_name.blank?
        errors.add(:base, "学校は登録済みの学校を選択するか、新規に追加してください")
      end
    end
end
