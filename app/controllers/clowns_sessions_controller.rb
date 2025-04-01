class ClownsSessionsController < ApplicationController
  def create
    clown = Clown.find_by(email: params[:email])
    if clown && clown.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: clown.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: clown.email, user_id: clown.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
  end