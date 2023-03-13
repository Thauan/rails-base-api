class Address < ApplicationRecord
    states = %w[ AC AL AP 
        AM BA CE DF ES GO
        MA MT MS MG PA PB 
        PR PE PI RJ RN RS 
        RO RR SC SP SE TO ]

    belongs_to :addressable, polymorphic: true
    validates :state, inclusion: { in: states }
    validates :complement, length: { maximum: 40 }
    validates :street, :neighborhood, :city, :state, :zip_code, presence: true
end
