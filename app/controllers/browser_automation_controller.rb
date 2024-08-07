class BrowserAutomationController < ApplicationController
    def open_url
        app = params[:app]
        url = params[:url]

        case app
        when 'chrome'
            system("open -a 'Google chrome' #{url}")
        when 'firefox'
            system("open -a 'Firefox' #{url}")
        else
            render plain: 'Unsupported browser', status: :bad_request
        end
        render plain: 'Browser opened'
    end
end

