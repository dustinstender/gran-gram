CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
   }
  config.fog_directory  = ENV['FOG_DIRECTORY']
  # config.fog_directory  = 'name_of_bucket'
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :fog
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
