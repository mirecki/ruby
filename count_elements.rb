class CountElements

    attr_reader :results
    def initialize(results)
      @results = results
    end

    def perform
        if @results.kind_of?(Array)
            @counts = @results.each_with_object(Hash.new(0)) do |el, hash| 
                hash[el] += 1
            end
            return @counts
        end
    end

end
