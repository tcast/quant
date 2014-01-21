# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0)
#  unlock_token           :string(255)
#  locked_at              :datetime
#  name                   :string(255)
#  height                 :float
#  authentication_token   :string(255)
#  time_zone              :string(255)      default("UTC")
#

Fabricator(:user) do
  namee 'test name'
  email { "#{(0...8).map { (65 + rand(26)).chr }.join}@local.dev" }
  height 10.0
  password 'changeme'
  password_confirmation 'changeme'
end
