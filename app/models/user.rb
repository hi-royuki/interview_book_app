class User < ApplicationRecord
  # ユーザーが入力したパスワードと確認用のパスワードをが一致した場合ユーザー登録完了する
  has_secure_password
end
