require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_data|
    if contestant_data["status"] == "Winner"
     return contestant_data["name"].split.first
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season,season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter =0
  data.each do |seaon, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        counter+=1
      end
    end
  end
  return counter
end

# def count_contestants_by_hometown(data, hometown)
#   hometown_contestants = []
#   data.each do |seaon, season_data|
#     season_data.each do |contestant|
#       if contestant["hometown"] == hometown
#         hometown_contestants.push(contestant)
#     end
#   end
# end
#   hometown_contestants.length
# end

def get_occupation(data, hometown)
    data.each do |season,season_data|
      season_data.each do |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end
      end
    end
end

def sum(array)
  sum = 0
  array.each do |num|
    sum+=num
  end
  return sum
end

def get_average_age_for_season(data, season)
  ages = data[season].collect do|contestant|
    contestant["age"].to_f
  end
  (sum(ages)/ages.length).round
end
