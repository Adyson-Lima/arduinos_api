puts 'Gerando arduinos...'

5.times do |i|
  Arduino.create(
    name: ["uno", "mini", "mega", "lilypad"].sample ,
    description: "tipo de arduino"
    )
end

puts 'arduinos gerados com sucesso!'