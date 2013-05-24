$monsters = []

$monsters << {
	:name => 'Zombie',
	:nocturnal => false,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['fire', 'decapitation'],
	:legs => 2
}
$monsters << {
	:name => 'Mummy',
	:nocturnal => false,
	:dangers => ['bites', 'scratches', 'curses'],
	:vulnerabilities => ['fire', 'decapitation', 'cats'],
	:legs => 2
}
$monsters << {
	:name => 'Vampire',
	:nocturnal => true,
	:dangers => ['bites', 'hypnosis'],
	:vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
	:legs => 2
}
$monsters << {
	:name => 'Werewolf',
	:nocturnal => true,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['silver'],
	:legs => 4
}
$monsters << {
	:name => 'Blob',
	:nocturnal => false,
	:dangers => ['suffocation'],
	:vulnerabilities => ['CO2', 'ice', 'cold'],
	:legs => 0
}

$monsters.count{|i| i[:nocturnal]}
$monsters.select{|i| i[:nocturnal]}.map{|i| i[:name]}
$monsters.map{|i| i[:legs]}.inject(:+)
$monsters.map{|i| i[:dangers]}.flatten.inject(Hash.new(0)){ |h,d| h[d] +=1; h}
$monsters.map{|i| i[:vulnerabilities]}.flatten.inject(Hash.new(0)){ |h,d| h[d] +=1; h}
$monsters.map{|i| i[:vulnerabilities]}.flatten.inject(Hash.new(0)){ |h,d| h[d] +=1; h}.sort_by{|a,b| b}.reverse[0...2].map{|a| a[0]}
