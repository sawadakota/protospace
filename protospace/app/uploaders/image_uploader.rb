class ImageUploader < CarrierWave::Uploader::Base
  # S3 strage
  storage :fog
end
