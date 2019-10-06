class Timer
    attr_accessor :seconds
    
    def seconds (secs=0)
        @seconds = 0
    end

    def time_format digits
        if digits < 10
            return "0#{digits}"
        else
            return digits
        end
    end

    def time_string
        hours = 0
        minutes = 0
        secs = @seconds

        if secs / 3600 > 0
            hours = secs / 3600
            secs -= hours * 3600
        end

        if secs / 60 > 0
            minutes = secs / 60
            secs -= minutes * 60
        end

        return "#{time_format(hours)}:#{time_format(minutes)}:#{time_format(secs)}"
    end
end
