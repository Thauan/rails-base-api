module Api
  module V1
    module TokenGenerator
      module_function

      def generate_token(user, expiration_time = 15.minutes.from_now.to_i)
        payload = {
          data: { id: user.id },
          exp: expiration_time
        }

        JWT.encode(payload, ENV['DEVISE_JWT_SECRET_KEY'], 'HS256')
      end

      def generate_refresh_token(user)
        RefreshToken.create(
          identifier: SecureRandom.uuid,
          user: user,
          expires_at: 1.week.from_now
        )
      end
    end
  end
end
