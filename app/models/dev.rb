class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.find_by(item_name: item_name) ? true : false
  end

  def give_away(dev, freebie)
    # self.freebies.find_by(freebie) ? ie(dev, freebie.item_name, freebie.value) : "No freebie available!"
    if self.freebies.include?(freebie)
      freebie.dev_id = dev.id

      dev.freebies << freebie
      self.freebies.delete(freebie)
      freebie.save
    else 
      "No freebie available!"
    end
  end
end
