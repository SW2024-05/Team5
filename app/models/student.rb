class Student < ApplicationRecord
    belongs_to :school
    belongs_to :fitting
    belongs_to :product , optional: true
    validate :school_presence
    
    def self.import(file,school_id)
      CSV.foreach(file.path, headers: true) do |row|
        
        fitting = Fitting.new()
        fitting.save
        
        student = Student.new(
          student_name: row["氏名"],
          product_id: nil ,
          fitting_id: fitting.id ,
          school_id: school_id
        )
        
        # student.attributes = row.to_hash.slice(*updatable_attributes)
        student.save
      end
    end
    
    def self.updatable_attributes
      ["student_name"]
    end
    
    private
    
    def school_presence
      if school_id.blank? && school_name.blank?
        errors.add(:base, "学校は登録済みの学校を選択するか、新規に追加してください")
      end
    end
end
