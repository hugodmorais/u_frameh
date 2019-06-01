class Student < ApplicationRecord
    has_secure_password

    # Includes

    # Attributes
    
    # Associations
    has_many :student_courses
    has_many :courses, through: :student_courses
    
    # Delegates

    # Constants
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

    # Validations
    validates :name, presence: true, length: { minimum: 5, maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                                    format: { with: VALID_EMAIL_REGEX },
                                    uniqueness: { case_sensitive: true }

    # Scopes

    # Callbacks
    before_save { self.email = email.downcase }
    
    # Constants Methods

    # Default

    private
end
