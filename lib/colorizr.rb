class String
@@color_map = { black: 30,
              red: 31,
              green: 32,
              yellow: 33,
              blue: 34,
              light_grey: 37,
              light_blue: 94,
              pink: 35 ,
              white: 97}

  def self.colors
    @@color_map.keys
  end

  def self.create_colors
    @@color_map.each do |color, code|
      class_eval(%Q{
        def #{color}
          "\e[#{code}m\#{self}\e[0m"
        end
        })
    end
  end

  def self.sample_colors
    @@color_map.each_key do |color|
      puts eval(%Q{'This is ' + '#{color}'.#{color}})
    end
  end
end
