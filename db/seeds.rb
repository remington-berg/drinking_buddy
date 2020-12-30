User.create(name: "Remington", email: "remington@example.com", user_name: "remingtonnberg", password: "password", admin: true)

Restaurant.create(name: "Avenue Tavern", address: "2916 N Broadway Ave", phone_number: "7739757000")
Restaurant.create(name: "Hoyt's", address: "75 E Upper Wacker Drive", phone_number: "7735555555")

Special.create(name: "Happy Hour", description: "$4 well drinks and $5 drafts", day: "Monday", restaurant_id: 1)
Special.create(name: "Happy Hour", description: "$4 well drinks and $5 drafts", day: "Tuesday", restaurant_id: 1)
Special.create(name: "Happy Hour", description: "$4 well drinks and $5 drafts", day: "Wednesday", restaurant_id: 1)
Special.create(name: "Happy Hour", description: "$4 well drinks and $5 drafts", day: "Thursday", restaurant_id: 1)
Special.create(name: "Happy Hour", description: "$4 well drinks and $5 drafts", day: "Friday", restaurant_id: 1)
Special.create(name: "Tini Tuesday", description: "All specialty martinis 1/2 priced", day: "Tuesday", restaurant_id: 2)
Special.create(name: "Manhattan Monday", description: "Signiture Manhattan $10", day: "Monday", restaurant_id: 2)
