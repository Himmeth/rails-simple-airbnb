Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flats
end

# As a user, I can see all the available flats on our website
# As a user, I can post a flat to the website, specifying its name and address
# As a user, I can see detailed information of a given flat, including a nice little map if I get lost 😊
# As a user, I can edit the details of a flat if I made a mistake
# As a user, I can delete a flat from the website, in case I don't want to rent it anymore
