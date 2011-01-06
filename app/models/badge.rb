class Badge < ActiveRecord::Base
  
  image_accessor :image
  
  def show_image ( opts )
    
    opts = "300x250#" if opts.empty?
    
    unless this.image.nil?      
      return "<img src=" + @badge.image.url(opts) + "/>"
    end
    
  end
  
end
