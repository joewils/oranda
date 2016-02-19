require 'liquid'
require 'sinatra'
require 'json'
require 'open3'
require 'uuidtools'
require 'uri'

# Libs
require_relative 'app/liquid'

# Home Page
# GET http://localhost:4567
require_relative 'app/home.rb'

# PDF 2 HTML API
# POST http://localhost:4567/pdf
require_relative 'app/pdf.rb'