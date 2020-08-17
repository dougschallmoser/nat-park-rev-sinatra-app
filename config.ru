require './config/environment'

use Rack::MethodOverride
use PostsController
use UsersController
use ParksController

run ApplicationController