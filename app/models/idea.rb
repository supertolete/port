class Idea < ApplicationRecord
mount_uploader :picture, PictureUploader
 validates :name, presence: true,
                    length: { minimum: 5 }





 

validates :picture,  presence: true,  
 
 


       format: {
  with: %r{\.gif|jpg|png}i, size_range: 1..3.megabytes,
  message: 'file must be formats: gif, jpg, or png. Try again'
}

validate :picture_size_validation, :if => "picture?" 
 def picture_size_validation
    errors[:picture] << "should be less than 3MB" if picture.size > 3.megabytes
  end
 




end
