class JwtDenylist < ApplicationRecord
  Devise::JWT::RevocationStrategies::Denylist

  self.table_name = 'jwt_denylist'
end
