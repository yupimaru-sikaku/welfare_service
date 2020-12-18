class SignupsController < ApplicationController

  # 各アクション毎に新規インスタンスを生成
  # 各アクション毎に遷移元のページのデータをsessionに保管する
  def step1
    # 新規インスタンスを作成
    @user = User.new
  end

  def step2
    # step1の値をsessionに保存
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    # 新規インスタンスを作成
    @user = User.new
  end

  def step3
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    @user = User.new
  end

  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: user_params[:birthdate_year],
      birthdate_month: user_params[:birthdate_month],
      birthdate_day: user_params[:birthdate_day],
      phone_number: user_params[:phone_number],
    )

    if @user.save
      session[:id] = @user.id
      redirect_to done_signups_path
    else
      render :step1
    end
  end

    def done
      sign_in User.find(session[:id]) unless user_signed_in?
    end

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birthdate_year,
      :birthdate_month,
      :birthdate_day,
      :phone_number
    )
  end
end
