#encoding: UTF-8
module Termit
  class SpeechSynthesizer
    extend ::Delegation
    @output_manager = Termit::OutputManager.new
    delegate :display_player_error_and_quit, to: @output_manager

    def initialize options
      check_sound_player
      @text = options[:text]
      @url = Termit::UrlConstructor.new(options).url
    end

    def call
      response = Termit::DataFetcher.new(@url, @text).data
      Termit::SoundResponseHandler.new(response.body).call
    end

    private

    def check_sound_player
      unless system 'which mpg123 > /dev/null'
        display_player_error_and_quit
      end
    end
 end
end