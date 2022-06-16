# ここはどこ？ => app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #deviseの機能(サインアップやログイン認証など)が使われる前にconfiなんたらメソッドが実行されます。

  protected #外部からは隠蔽しますが、サブクラス（継承先のクラス）やパッケージ内からのみ利用させたい場合はprivateではなくprotectedを使います。

  def configure_permitted_parameters #上でも実行されているような、confiなんたらメソッドをここで定義します。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #sign_upの際にnameのデータ操作を許可しています。
  end

end
