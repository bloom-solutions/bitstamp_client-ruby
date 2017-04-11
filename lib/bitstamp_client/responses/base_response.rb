module BitstampClient
  class BaseResponse

    include APIClientBase::Response.module
    attribute :body, String, lazy: true, default: :default_body

    private

    def default_body
      raw_response.body
    end

  end
end
