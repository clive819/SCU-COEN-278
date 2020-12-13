post '/login' do
    if params[:username].empty?
        session[:login] = false
        redirect to('/')
        return
    end

    user = User.get(params[:username])

    if user.nil?
        user = User.new(username: params[:username], password: params[:password], totalWin: "0", totalLoss: "0")
        user.save
        session[:login] = true
    elsif user.password == params[:password]
        session[:login] = true
    else
        session[:login] = false
    end

    session[:username] = params[:username]
    session[:password] = params[:password]
    session[:totalWin] = "0"
    session[:totalLoss] = "0"
    session[:user] = user

    redirect to('/')
end


get '/logout' do
    user = session[:user]
    user.save
    session.clear
    redirect to('/')
end
