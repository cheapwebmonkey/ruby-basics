class PhoneNumber
  attr_accessor :type, :number

  def to_s
    "#{type}: #{number}"
  end
end
