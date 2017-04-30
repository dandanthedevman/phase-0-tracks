highway = {
  lane_one: {
  		blue_car: 
  			["Steph"],
  		
  		red_car:
  			["Dan, Rachel"],
    	
    	silver_car:
    		[ "Brian", "Richard"]
  }, 
  
  lane_two: {
  	small_truck:
  		["Chad"],
    
    big_truck:
  		["Chris", "Steve"],
  	
  	van:
  		["greg", "child1", "child2", "child3", "child4", "child5", "child6"]
  },
  
  lane_three: {
  	elephants: {
  		number_of: 3,
  		size:"large"
  	},
  	
  	firefighters:
  		["Terry","Rick"],
  	
  	firetruck:[]
  }
}

p highway[:lane_one][:silver_car]

p highway[:lane_two][:van][-1]

p highway[:lane_three][:elephants][:number_of] = 1