require 'csv'
tables = CSV.parse(File.read("Dubai_weather_2004_Aug.csv"), headers: true)
def max_temp(tables)
    max_value = 0
    date=''
    for i in tables
        if  i[1].to_i >= max_value.to_i
            max_value= i[1]
            date=i[0]
        end
    end
puts "Highest: #{max_value}C on #{date}"
end
def min_temp(tables)
    min_value = 5000
    date=''
    for i in tables
        if  i[1].to_i <= min_value.to_i
            min_value= i[1]
            date=i[0]
        end
    end
puts "Lowest: #{min_value}C on #{date}"
end
def humidty(tables)
    humid = 0
    date=''
    for i in tables
        if  i[7].to_i >= humid.to_i
            humid= i[7]
            date=i[0]
        end
    end
puts "Humid: #{humid}C on #{date}"
end

max_arr = []
for month in months
    
    file_path = "/home/Documents/weatherMan/Dubai_weather/"
    file_name = "Dubai_weather_#{year}_#{month}.csv"
    if filenames_Dubai.include?(file_name)
        # max_arr = []
        final = file_path<< file_name 
        # puts final
        objects = CSV.parse(File.read(final),headers: true)
        max_arr << max_temp(objects)

humidty(tables)
min_temp(tables)
max_temp(tables)

