# == Schema Information
#
# Table name: links
#
#  id                      :integer          not null, primary key
#  original_link           :string(255)
#  random_generated_string :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#

class Link < ActiveRecord::Base




end
