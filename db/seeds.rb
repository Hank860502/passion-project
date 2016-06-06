User.delete_all
Country.delete_all
Tour.delete_all
Image.delete_all
Comment.delete_all
Vote.delete_all

User.create(first_name: "hank", last_name: "chen", user_name: "hank123", password: "123")

Country.create(country_name: "Taiwan", url: "http://cdn.ttgtmedia.com/rms/editorial/Taiwan_Fotolia.jpg")

Tour.create(tour_name: "Hank's home town", price: 0, content: "Hank will bring you to the best night market in the world", time_needed: 5, country_id: 1)
Tour.create(tour_name: "Ali mountain", price: 60, content: "One of the best sunrise in Taiwan.", time_needed: 5, country_id: 1)
Tour.create(tour_name: "Taipei 101", price: 0, content: "One of the tallest building in the world.", time_needed: 2, country_id: 1)
Tour.create(tour_name: "YuShan", price: 100, content: "The tallest mountain in south east Asia.", time_needed: 12, country_id: 1)
Image.create(url: "https://img.hotelscan.com/667_375/1/3586-000-taichung.jpg", tour_id: 1) #Taichung
Image.create(url: "http://news.gpwb.gov.tw/p/b_F0101/20141205/2356024.jpg", tour_id: 2) #Ali mountain
Image.create(url: "http://mobileonlyx.com/wp-content/uploads/2015/10/BG-2.jpg", tour_id: 3) #taipei101
Image.create(url: "https://s-media-cache-ak0.pinimg.com/736x/b2/43/62/b243622c4b478167b225e93621e82406.jpg", tour_id: 4) #YuShan








Country.create(country_name: "United Kingdom", url: "http://smithstonewalters.com/wordpress/wp-content/uploads/2013/10/London_70444405.jpg") # id 2

Tour.create(tour_name: "Eilean Donan Castle, Kyle of Lochalsh", price: 100, content: "Walk along the castle with uniform provided.", time_needed: 3, country_id:2)
Tour.create(tour_name: "London Bridge", price: 50, content: "Walk across the bridge", time_needed: 3, country_id: 2)
Tour.create(tour_name: "Stonehenge", price: 100, content: "Visit the mysterious Stonehenge", time_needed: 3, country_id: 2)
Image.create(url: "https://unsplash.com/photos/lhah6lFnims/700x500", tour_id: 5) #UK castle
Image.create(url: "https://images.unsplash.com/photo-1454537468202-b7ff71d51c2e?crop=entropy&fit=crop&fm=jpg&h=800&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=975", tour_id: 6) #london bridge
Image.create(url: "http://corporate.studygroup.com/-/media/Corporate%20Site/Images/Carousel/Standard/Higher%20Education/UK/Higher_education_uk.jpg", tour_id: 7)