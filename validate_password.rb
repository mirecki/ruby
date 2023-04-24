class ValidatePassword
    attr_reader :password
    def initialize(password)
      @password = password
    end

    def perform
        !(@password =~ /(?!.*([A-Za-z0-9!@#$%&*+=:;?<>])\1{2})(?=.*[a-z])(?=.*\d)(?=.*[A-Z])(?=.*[!@#$%&*+=:;?<>])(?=^.{6,24}$)/ ).nil? 
        #neguje bo z if nie lapie, zdecydowanie za dlugo o tym czytalem czemu dostaje dziwnego nil, bede madrzejszy na przyszlosc
    end
end
