class Toy < ApplicationRecord
  def ordered_by_id
    Toy.all.order('id')
  end
end
