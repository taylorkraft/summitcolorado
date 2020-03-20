mountains = ["kilimanjaro", "everest", "himalaya", "black bear", "grandfather"]
mountains.each do |name|
  Mountain.new(name.capitalize)
end