class Image < ActiveRecord::Base
         has_attached_file :kvr, :styles => { :medium => "300x300>", :thumb => "100x100#" }
         validates_presence_of :kvr
end

