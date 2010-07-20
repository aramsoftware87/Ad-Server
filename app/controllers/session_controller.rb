class SessionController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :about, :contact, :services]
end
