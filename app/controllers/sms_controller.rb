require "plivo"
include Plivo

class SmsController < ApplicationController

  def create
    byebug
    api = RestClient.new({auth_id}, {auth_token})
    response = api.messages.create(
      '+17753767759', #from
      ["+15127675225"], #to
      params[:message], #text
      { url: "http://foo.com/sms_status/" },
    )
    puts response
    #Prints only the message_uuid
    puts response.message_uuid
  end

  def index
    api = RestClient.new({auth_id}, {auth_token})
    response = api.messages.list(
      # limit: 5,
      offset: 0,
      # subaccount: "subaccount_auth_id",
    )
    byebug
    puts response

  end
end