module BitstampClient
  class BaseRequest

    include APIClientBase::Request.module

    private

    def headers
      {
        "Content-Type" => "application/json",
        "Accept" => "application/json",
      }
    end

  end
end
