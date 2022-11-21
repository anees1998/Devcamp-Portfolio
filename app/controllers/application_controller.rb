class ApplicationController < ActionController::Base
include DeviseWhitelist
include SetSourceConcern
include CurrentUserConcern
end
