

    CarrierWave.configure do |config|
        config.fog_credentials = {
            provider: 'AWS',
            aws_access_key_id: ENV['S3_ACCESS_KEY'],
            aws_secret_access_key: ENV['S3_SECRET_KEY'],
            region: 'eu-west-2'
        }
        config.storage = :fog
        config.fog_public = false
        config.cache_dir = "#{Rails.root}/tmp/"
        config.fog_directory = ENV['S3_BUCKET']
    end
