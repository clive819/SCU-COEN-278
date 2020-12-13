post '/bet' do
    begin
        ans = rand(1...6)
        user = session[:user]
        money = Integer(params[:money])
        guess = Integer(params[:guess])

        if money < 1 || guess < 1 || guess > 6
            raise "error"
        end
        session[:error] = false

        if ans == guess
            user.totalWin = (money + user.totalWin.to_i).to_s
            session[:totalWin] = (money + session[:totalWin].to_i).to_s
            session[:win] = true
        else
            user.totalLoss = (money + user.totalLoss.to_i).to_s
            session[:totalLoss] = (money + session[:totalLoss].to_i).to_s
            session[:win] = false
        end

        user.save

        redirect to('/')
    rescue
        session[:error] = true
        redirect to('/')
    end
end
