class Hacker

  attr_reader :name, :lastname, :email
  
  def initialize(name, lastname, email)
    @name = name
    @lastname = lastname
    @email = email
  end

  def to_s
    "#{name} #{lastname} - #{email}"
  end

  def to_csv
    [name.capitalize, lastname.capitalize, email.downcase].join(',')
  end

end