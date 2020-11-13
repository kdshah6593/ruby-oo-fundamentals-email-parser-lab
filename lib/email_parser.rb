# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(string_of_emails)
        @emails = string_of_emails
    end
    #concise answer
    def parse
        @email_addresses = @emails.split(/[, ]+/).uniq
        @email_addresses
    end

    #more written out parse method
    # def parse
    #     parsed_emails = []
    #     @email_addresses = @emails.split(", ").uniq
    #     @email_addresses.each do |email|
    #         parsed_emails << email.split(" ")
    #     end
    #     parsed_emails.flatten
    # end
end