module BitstampClient
  class BaseResponse

    include APIClientBase::Response.module
    attribute :body, String, lazy: true, default: :default_body
    attribute :parsed_body, Hash, lazy: true, default: :default_parsed_body

    private

    def default_body
      raw_response.body
    end

    def default_success
      raw_response.success? && !parsed_body.has_key?("status")
    end

    def default_parsed_body
      JSON.parse(body)
    rescue JSON::ParserError
    end

  end
end
