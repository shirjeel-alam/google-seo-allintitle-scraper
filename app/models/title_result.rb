# == Schema Information
#
# Table name: title_results
#
#  id           :integer          not null, primary key
#  keyword_id   :integer
#  google_count :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TitleResult < ActiveRecord::Base
  
  belongs_to :keyword
  
end
