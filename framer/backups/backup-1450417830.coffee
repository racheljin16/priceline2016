# This imports all the layers for "priceline prototype new" into pricelinePrototype
pricelinePrototype = Framer.Importer.load "imported/priceline prototype new"


# loading animation

pricelinePrototype.logo.animate
  properties:
    rotation:360
  curve: "ease"
  time: 1.5
  delay: 1.5


# enter homepage

pricelinePrototype.Loadingpage1.states.add
  hide: {x: -750}
pricelinePrototype.homepage2.states.add
  show: {x: 0}
pricelinePrototype.homepage2.states.add 
	hide: {x:-750}
pricelinePrototype.searchresult3.states.add
	show:{x: 0}	


pricelinePrototype.Loadingpage1.states.animationOptions =
	time: 0.5
	delay: 1
	
pricelinePrototype.homepage2.states.animationOptions =
	time: 0.5
	curve: "ease"
	delay: 0

pricelinePrototype.searchresult3.states.animationOptions =
	time: 0.5
	curve: "ease"
	
	
# type city name/travel date

pricelinePrototype.search_bar.on Events.Click, ->
	pricelinePrototype.city_mask.animate 
		properties: 
			opacity: 0
	pricelinePrototype.search_icon.animate
		properties:
			opacity: 0

pricelinePrototype.sat.on Events.Click, ->
	pricelinePrototype.check_in.animate
		properties:
			x: 20
			scale: 0.8
	pricelinePrototype.check_out.animate
		properties:
			x: 225
			
pricelinePrototype.sun.on Events.Click, ->
	pricelinePrototype.date_block_2.animate
		properties:
			x: 85


# filter list show

pricelinePrototype.filter_btn.on Events.Click, ->
	pricelinePrototype.filter_list.animate
		properties:
			x: 0
			curve: "ease"
			time: .3


			
pricelinePrototype.union_square.on Events.Click, ->
	pricelinePrototype.union_new.backgroundColor = "#3E70DC"
	pricelinePrototype.all_neighbor_new.backgroundColor = "#53AAF2" 

pricelinePrototype.save_filters.on Events.Click, ->
	pricelinePrototype.filter_list.animate
		properties:
			x: -750
			curve: "ease"
			time: .3



# click search btn

pricelinePrototype.logo.on Events.AnimationEnd, ->
	pricelinePrototype.homepage2.states.switch("show")
	pricelinePrototype.Loadingpage1.states.switch("hide")
	
pricelinePrototype.search_btn.on Events.Click, ->
	pricelinePrototype.searchresult3.states.switch("show")
	pricelinePrototype.homepage2.states.switch("hide")

# scroll
scroll = ScrollComponent.wrap(pricelinePrototype.hotel_old)
scroll.scrollHorizontal = false
scroll.contentInset =
	bottom:300

# click tonight deal
pricelinePrototype.deal_tonight_tab.on Events.TouchStart, ->
	pricelinePrototype.deal_tonight_tab.opacity = 0
	scroll.animate
      properties:
        y: 1334
  	  curve: "ease"
  	  time: 1.3
	pricelinePrototype.hotel_new.animate
	  properties:
    	y: 207.6
  	  curve: "ease"
  	  time: 1.3
	


# flip to map view  	
pricelinePrototype.searchresult3.perspective = 10000
pricelinePrototype.body_show_map.perspective = 10000
pricelinePrototype.body_show_map.states.add 
  readytoflip:{x:-3000, opacity: 0, rotationY: 180}

pricelinePrototype.show_map.on Events.Click, ->
	pricelinePrototype.show_map.animate
		properties:
	     x: 750
	    time:0.3 
	pricelinePrototype.show_list.animate
		properties:
	     x: 600
	    time:0.3 
	pricelinePrototype.body_show_map.states.switchInstant("readytoflip")
	pricelinePrototype.body_search_result.animate
	  properties:
	    rotationY:-180
	    opacity: 0
	  time:1
	  curve:"ease"
	pricelinePrototype.body_show_map.animate
	  properties:
	    rotationY:0
	    opacity:1
	  time:1	  
	  curve: "ease"
pricelinePrototype.show_map.states.add
  readytoshow:{x:1000}
  
pricelinePrototype.show_list.on Events.Click, ->
	pricelinePrototype.show_map.states.switchInstant("readytoshow")
	pricelinePrototype.show_map.animate
		properties:
		  x: 600
		time:0.3
	pricelinePrototype.show_list.animate
		properties:
		  x:750
		time: 0.3
	pricelinePrototype.body_search_result.animate
	  properties:
	    rotationY:0
	    opacity: 1
	  time:1
	  curve:"ease"
	pricelinePrototype.body_show_map.animate
	  properties:
	    rotationY:180
	    opacity:0
	  time:1
	  curve: "ease"	  
	  
# hotel details

pricelinePrototype.hotel_info_select.on Events.Click, ->
	pricelinePrototype.hoteldetails6.animate
		properties:
			x: 0
		time: 1 
		curve: "ease"
		
# where to go 
pricelinePrototype.choose_room_btn.on Events.Click, ->	pricelinePrototype.done_booking.animate
		properties:
			x: 0
		time: 1 
		curve: "ease"

# scrolling

scroll_tags = ScrollComponent.wrap(pricelinePrototype.tags_btns)
scroll_tags.scrollHorizontal = false
scroll_tags.contentInset =
	bottom:300

# deals tab
# pricelinePrototype.Search_deals_page.x = 3000
# pricelinePrototype.Deals_icon_active.on Events.Click, ->
# pricelinePrototype.Search_deals_page.animate
# 		properties:
# 			x: 0
# 		time: 1 
# 		curve: "ease"

# de young details
# pricelinePrototype.deyoung_tag.on Events.Click, ->
# pricelinePrototype.Deal_details_page.animate
# 		properties:
# 			x: 0
# 		time: 1 
# 		curve: "ease"


