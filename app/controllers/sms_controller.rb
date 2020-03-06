require "plivo"
include Plivo

class SmsController < ApplicationController

  def create
    byebug
    api = RestClient.new("MAMWU1M2FKMZCXMWUZOG", "OGU1NmY4YzlmOWNiNDVhZDU1MGQzZDhjNmMyYWE0")
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

  private 

  def sms_params
    byebug
    params.require(:sm).permit(:message)
  end
end