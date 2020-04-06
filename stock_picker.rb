def stock_picker arr

    days = []
    @best_value = 0
    @buy_day = 0
    @sell_day = 0
    count = 0

    arr.each_with_index do |sellday,i|
        if count > 0
            for buyday in 0..count do
                if sellday - arr[buyday] > @best_value
                    @best_value = sellday - arr[buyday]
                    @sell_day = i
                    @buy_day = buyday
                end
            end
        end
        count += 1
    end

    days << @buy_day
    days << @sell_day

    return days
end


p stock_picker [17,3,6,9,15,8,6,1,10]