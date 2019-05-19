class Course < ApplicationRecord
    # Includes

    # Attributes
    
    # Associations

    # Delegates

    # Constants

    # Validations
    validates :name, presence: true, length: { minimum: 5, maximum: 50 }
    validates :short_name, presence: true, length: { minimum: 3, maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }

    # Scopes

    # Callbacks

    # Constants Methods

    # Default

    private
end
