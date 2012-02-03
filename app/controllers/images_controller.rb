class ImagesController < ApplicationController
        def index
                @images=Image.find(:all)
        end
        def new
                @image=Image.new
        end
        def create
                @image=Image.new(params[:image])
                if @image.save
                        redirect_to "/images"
                else
                        render :action=> "new"
                end
        end
        def downloadimage
                @xxx=Image.find(params[:id])
                @download="#{RAILS_ROOT}/public/images/#{params[:id]}.jpeg"
                send_file(@download, :filename=> "#{params[:id]}", :type=> 'image/jpeg')
        end
end

