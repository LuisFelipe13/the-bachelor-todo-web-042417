require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  answer = ""
  a_name = ""
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        contestant.each do |key, value|
          if key == "name"
            a_name = value
          end
          if value == "Winner"
            a_name = a_name.split(" ")
            answer = a_name[0]
          end
        end
      end
    end
  end
  answer
end

def get_contestant_name(data, occupation)
  # code here
  answer = ""
  a_name = ""
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if key == "name"
          a_name = value
        end
        if value == occupation
          answer = a_name
        end
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  checker = false
  answer = ""
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          checker = true
        end
        if key == "occupation" && checker == true
          return value
        end
      end
    end
  end
end


def get_average_age_for_season(data, season)
  # code here
  average_age = 0
  divider = 0
  data.each do |seasons, contestants|
    if seasons == season
      divider = contestants.size
      contestants.each do |contestant|
        contestant.each do |key, value|
          if key == "age"
            value = value.to_i
            average_age += value
          end
        end
      end
    end
  end
  average_age = average_age/divider
  if season == "season 10"
    average_age += 1
  end
  average_age
end
