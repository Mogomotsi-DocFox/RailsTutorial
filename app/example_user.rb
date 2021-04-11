class User
    attr_accessor :first_name, :last_name
    attr_accessor :name, :email

    def initialize(attribute = {})
        @name = attribute[:name]
        @email = attribute[:email]
        @first_name = attribute[:first_name]
        @last_name = attribute[:last_name]
    end

    def formatted_email
        "#{@name} <#{email}>"
    end
    def formatted_email
        "#{@name} <#{email}>"
    end

    def full_name
        "#{@first_name} #{last_name}"
    end

    def alphabetical_name
        "#{last_name}, #{@first_name}"
    end
end
