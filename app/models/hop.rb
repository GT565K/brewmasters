# == Schema Information
#
# Table name: hops
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  version    :integer
#  origin     :string(255)
#  alpha      :float
#  notes      :text
#  type       :string(255)
#  form       :string(255)
#  beta       :float
#  HSI        :float
#  created_at :datetime
#  updated_at :datetime
#

class Hop < ActiveRecord::Base
  self.inheritance_column = nil
end
