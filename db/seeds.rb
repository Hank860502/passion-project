User.delete_all
Country.delete_all
Tour.delete_all
Image.delete_all
Comment.delete_all
Vote.delete_all

User.create(first_name: "hank", last_name: "chen", user_name: "hank123", password: "123")

Country.create(country_name: "Taiwan", url: "http://cdn.ttgtmedia.com/rms/editorial/Taiwan_Fotolia.jpg")

Tour.create(tour_name: "Taichung", price: 0, content: "Hank's hometown", time_needed: 5, country_id: 1, image_id: 1)
Image.create(url: "https://unsplash.com/photos/sGblr5yVXiM/700x500") #Taichung
Image.create(url: "http://news.gpwb.gov.tw/p/b_F0101/20141205/2356024.jpg") #Ali mountain
Image.create(url: "http://mobileonlyx.com/wp-content/uploads/2015/10/BG-2.jpg") #taipei101
Image.create(url: "https://scontent-sjc2-1.xx.fbcdn.net/v/t1.0-9/1660666_586031818139706_39035489_n.jpg?oh=e8a7552970afd06c4860dd9f7e1ee0cc&oe=57CB53D2") #YuShan

Image.create(url: "https://unsplash.com/photos/lhah6lFnims/700x500") #UK castle
Image.create(url: "https://images.unsplash.com/photo-1454537468202-b7ff71d51c2e?crop=entropy&fit=crop&fm=jpg&h=800&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=975") #london bridge
Image.create(url: "http://corporate.studygroup.com/-/media/Corporate%20Site/Images/Carousel/Standard/Higher%20Education/UK/Higher_education_uk.jpg")
Country.create(country_name: "United Kingdom", url: "http://smithstonewalters.com/wordpress/wp-content/uploads/2013/10/London_70444405.jpg") # id 2
Tour.create(tour_name: "Eilean Donan Castle, Kyle of Lochalsh", price: 100, content: "Eilean Donan (Scottish Gaelic: Eilean Donnain) is a small tidal island where three lochs meet, Loch Duich, Loch Long and Loch Alsh, in the western Highlands of Scotland. A picturesque castle that frequently appears in photographs, film and television dominates the island, which lies about 1 kilometre (0.62 mi) from the village of Dornie. Since the castle's restoration in the early 20th century, a footbridge has connected the island to the mainland.

Eilean Donan is part of the Kintail National Scenic Area, one of 40 in Scotland. In 2001, the island had a recorded population of just one person,[3] but there were no usual residents at the time of the 2011 census.

Eilean Donan, which means simply island of Donnán, is named after Donnán of Eigg, a Celtic saint martyred in 617. Donnán is said to have established a church on the island, though no trace of this remains.", time_needed: 3, country_id:2, image_id: 5)
Tour.create(tour_name: "London Bridge", price: 50, content: "Walk across the bridge", time_needed: 3, country_id: 2, image_id: 6)
Tour.create(tour_name: "Stonehenge", price: 100, content: "Visit the mysterious Stonehenge", time_needed: 3, country_id: 2, image_id: 7)