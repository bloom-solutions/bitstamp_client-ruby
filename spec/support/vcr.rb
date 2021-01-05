require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  c.hook_into :webmock
  c.configure_rspec_metadata!

  FILTERED_VARIABLES = [
    "KEY",
    "SECRET",
    "CUSTOMER_ID",
  ]

  FILTERED_VARIABLES.each do |key|
    c.filter_sensitive_data("[#{key}]") { ENV[key] }
  end

end
