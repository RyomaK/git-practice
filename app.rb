require "sinatra"

get "/" do 
	erb:index
end

get "/score_write" do
	erb:score_write
end

post "/score" do
	@semester = params[:semester]
	@test = params[:test]
	@school_name = params[:school]
	@japanese =  params[:japanese]
	@math =  params[:math]
	@english =  params[:english]
	@science =  params[:science]
	@social =  params[:social]
	erb:score
end
