class Badge < ActiveRecord::Base
  
  image_accessor :image
  
  def show_image ( opts )
    
    opts = "300x250#" if opts.empty?
    
    unless self.image.nil?      
      return "<img src='" + self.image.url(opts) + "'/>"
    end
    
  end
  
end
