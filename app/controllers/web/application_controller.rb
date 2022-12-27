# frozen_string_literal: true

module Web
  class ApplicationController < ApplicationController
    helper_method :preview_body

    private

    def preview_body(body)
      "#{body.split('.').take(3).join}..."
    end
  end
end
