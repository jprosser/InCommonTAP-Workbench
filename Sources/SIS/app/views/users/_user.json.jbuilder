json.extract! user, :id, :uid, :givenname, :surname, :fullName, :description, :email, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
