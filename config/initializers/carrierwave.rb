
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'		
  config.fog_credentials = {
    provider:               'AWS',                        # required
    aws_access_key_id:      ENV["aws_access_key_id"],                        # required
    aws_secret_access_key:  ENV["aws_secret_access_key"],                        # required
    region:                 'us-west-2',                  # optional, defaults to 'us-east-1'
    host:                   'https://s3-us-west-2.amazonaws.com'            # optional, defaults to nil
  }
  config.fog_directory  = ENV["fog_directory"]                      # required
end