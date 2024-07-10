# email: string
# password_digest:string

# password virtual
# password_confirmation:string virtual


class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$", message: "Must be a valid email address." }
end
