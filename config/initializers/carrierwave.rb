CarrierWave.configure do |config|

  config.storage = :fog

  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => AWS_ACCESS_KEY_ID,
    :aws_secret_access_key => AWS_SECRET_ACCESS_KEY,
    :region                => 'us-east-1'
  }

  config.asset_host     = CDN_HOST
  config.fog_directory  = S3_BUCKET_NAME
  config.fog_public     = true
  config.fog_attributes = {
    'Cache-Control' => "max-age=#{1.year.to_i}"
  }
end