class UploadImageWorker
    include Sidekiq::Worker
    sidekiq_options retry: false
  

    def perform(params, temp_path)
        params = JSON.parse(params) rescue nil
        
        if params.present? 
            secretMenuItem = UploadDatum.create(
                name: params["name"],
                phone: params["phone"],
                email: params["email"],
                description: params["description"]
                )
            temp_path.each do |file|
                binding.pry
            secretMenuItem.images.attach(
                io: File.open(file["path"]),
                filename: file["name"],)
            end

        end
    end



#     def perform(upload_datas)
#         # upload_datas = JSON.parse(upload_datas)&.deep_symbolize_keys rescue nil
# # puts "error"
# # upload_datas["images"]=[]
# # upload_datas["images"]=image
#          puts upload_datas

#         # @upload_data=UploadDatum.new(upload_datas)
#         # # @upload_data.images.attach(image)

#         # @upload_data.save
#    end
  
  end