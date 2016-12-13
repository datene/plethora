class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :square_crop do
    cloudinary_transformation width: 300, height: 300, gravity: "auto", crop: "thumb"
  end

end
