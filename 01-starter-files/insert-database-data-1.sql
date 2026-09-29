-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(500) DEFAULT NULL,
  `description` VARCHAR(1000) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Smart Home product');
INSERT INTO product_category(category_name) VALUES ('Electronics');
INSERT INTO product_category(category_name) VALUES ('Sports Outdoor Play');
INSERT INTO product_category(category_name) VALUES ('Computer Accessories');

-- -----------------------------------------------------
-- Smart Home product
-- -----------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1001', '4-Port USB Hub 3.0 - Easily Connect Multiple Computers with Just One Drag!', 
'Efficient: Connect up to four USB devices to your computer with ease
Versatile: Compatible with USB 3.0 and backwards compatible with USB 2.0/1.1
Convenient: One drag design allows for easy plug-and-play use
Compact: Small and lightweight, perfect for on-the-go use or saving desk space', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1001.png', 1, 100, 8.49, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1002', '(Pack Of 2) Replaced Remote Control Only For Roku TV, Compatible For TCL Roku/Hisense Roku/Onn Roku/Sharp Roku/Element 
Roku/Westinghouse Roku/Philips Roku Series Smart TVs (Not For Roku Stick And Box)', 
'Convenient Replacement: Pack of 2 remote controls for Roku TV, compatible with various brands including TCL, Hisense, Onn, Sharp, Element, Westinghouse, and Philips Roku series smart TVs.
Easy to Use: Simple and user-friendly design for easy navigation and control of your Roku TV.
No Setup Required: Pre-programmed and ready to use without any setup required, simply insert batteries and start using.
High-Quality Performance: Provides reliable and responsive performance for your Roku TV, ensuring smooth and uninterrupted streaming.', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1002.png', 1, 100, 6.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1003', 'X98Q Smart TV Box Amlogic S905W2 Quad Core H.265 AV1 Dual Wifi HDR 10+ 4K Android 11.0 Set Top Box Streaming Media Player', 
'Connector Type: Hdmi
Connectivity Technology: Wireless
Certifications: FCC
Form Factor: TV Box
Special Features: Browser
Controller Type: Remote
Resolution: 4k
Model Year: 2023
Supported Internet Services: Youtube
Power Mode: Power Supply
Operating Voltage: ≤36V
Plug Specification: US Plug
Battery Properties: Without Battery', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1003.png', 1, 100, 19.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1004', 'Boost Your TV Signal With This 450+ Miles Range Indoor HDTV Antenna - 8K 4K Full HD Compatible With Powerful Amplifier & Signal Booster!', 
'Long Range Reception: Enjoy crystal-clear HDTV channels with a range of up to 450+ miles.
High Compatibility: This indoor TV antenna is compatible with 8K, 4K, and Full HD TVs, ensuring you get the best picture quality possible.
Powerful Amplifier: The included amplifier and signal booster ensures that you get the strongest signal possible, even in areas with weak reception.
Easy Installation: With a 26ft coaxial cable included, this TV antenna is easy to install and set up, making it perfect for both smart and older TVs.', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1004.png', 1, 100, 21.99, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1005', '550+ Miles Range TV Antenna, TV Antenna For Smart TV Indoor HD TV Antenna, Support 8K 4K 1080P UHF VHF View HDTV Channels, 32.8FT Coax HDTV Cable', 
'Extended Range: Enjoy over 550+ miles of high-quality HDTV channels with this indoor TV antenna.
Crystal Clear Picture: Support for 8K, 4K, and 1080P ensures you get the best picture quality available.
Wide Compatibility: This TV antenna supports UHF and VHF frequencies, making it compatible with a wide range of devices.
Easy Setup: The included 32.8FT coax cable makes it easy to set up and start watching your favorite shows in no time.
Save Money: Cut the cord and save money on cable bills with this affordable and high-quality TV antenna.', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1005.png', 1, 100, 26.99, 1, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1006', 'U Disk Charging Converter Type-c To Usb3.0 Female To Male Charger PD Data Cable 6A Adapter USB-C Port Mobile Phone Converter Gift For Birthday/Easter/Boy/Girlfriend', 
'Control Method: Application
Compatibility: Smartthings
Certifications: No Certification
Connectivity Type: USB
Power Mode: USB
Operating Voltage: ≤36V
wireless property: none
Battery Properties: Without Battery', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1006.png', 1, 100, 2.49, 1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Smart-Home-product-1007', '1pc HD1080P Wireless Wifi Light Bulb Security IP Camera , Smart Home Mini Security Video Surveillance 
Network PTZ Camera System 2.4G E27 Support SD/TF Card 128G Supprt Two Way Audio Mobile Motion Detection Audible And Visual Active Defense Alarm Notification Push 
Pet Baby Monitor Indoor Outdoor USB Web Cam Compatible With Cell Phones IPAD PC Tablets Laptops Smart Watches Remote Viewing Control Video Playback', 
'Connectivity Technology: Wi-fi
Lens Type: Fisheye
Exposure Control Type: Automatic
Certifications: FCC
Focus Type: Auto Focus
Power Mode: Room electrical/hard wiring
Operating Voltage: 85V-265V
Battery Properties: Without Battery', 
'assets/images/products/SmartHomeproducts/Smart-Home-product-1007.png', 1, 100, 13.99, 1, NOW());



-- -----------------------------------------------------
-- Electronics
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1001', '8 AC Outlets & 3 USB 3.0 Ports + 1 Type-C Port | Surge Protector & PD 18W Fast Charge | Perfect For Home, Office, Kitchen & Garage', 
'Versatile Charging: 8 AC outlets, 3 USB 3.0 ports, and 1 Type-C port provide ample charging options for all your devices.
Fast Charging: Supports PD 18W fast charging, ensuring your devices are charged quickly and efficiently.
Surge Protection: Built-in surge protection safeguards your devices from power fluctuations and surges.
Space-Saving Design: Compact and sleek design makes it easy to fit in any space, perfect for home, office, kitchen, or garage.
Easy to Use: Simply plug in and start charging, no complicated setup required.', 
'assets/images/products/Electronics/Electronics-Product-1001.png', 1, 100, 12.99, 2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1002', '40x22 HD Powerful Binoculars - 2000M Long Range Telescope With BAK4 FMC Optics - Perfect For Hunting, Sports, Outdoor Camping, And Travel', 
'Powerful Magnification: 40x magnification and 22mm objective lens provide clear and bright images even at long distances.
Long Range Viewing: Capable of viewing up to 2000 meters, perfect for hunting, sports, outdoor activities, camping, and travel.
Compact and Portable: Folding design makes it easy to carry in your pocket or backpack.
High-Quality Optics: BAK4 FMC optics provide superior light transmission and clarity for a better viewing experience.
Durable and Sturdy: Made with high-quality materials to withstand tough outdoor conditions.', 
'assets/images/products/Electronics/Electronics-Product-1002.png', 1, 100, 13.99, 2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1003', 'External DVD Optical Drive USB2.0 CD/DVD-ROM CD Player Reader Recorder For Laptop Burning', 
'Versatile Compatibility: This external DVD optical drive is compatible with a wide range of devices, including laptops, desktops, and even TVs with USB ports.
High-Speed Data Transfer: With USB 2.0 interface, this CD/DVD-ROM player offers fast and stable data transfer speeds, ensuring efficient and reliable performance.
Easy to Use: Simply plug and play, no additional drivers or software required. It is a perfect solution for those who need to access or burn CDs/DVDs on the go.
Compact and Portable: With its slim and lightweight design, this CD player is easy to carry around, making it ideal for travel, business trips, and more.
Multi-Purpose: Whether you want to watch a movie, listen to music, install software, or backup important data, this CD/DVD-ROM player is a must-have accessory for your laptop.', 
'assets/images/products/Electronics/Electronics-Product-1003.png', 1, 100, 14.29, 2, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1004', 'White Super Powerful Flashlight Rechargeable Torch Light High Power LED Flashlight Tactical Lantern', 
'Super Bright: The titanium laser torch provides an incredibly powerful beam of light that illuminates even the darkest spaces.
Long-lasting: With its rechargeable battery, this torch can last for hours on a single charge, making it perfect for extended use.
Durable: Made from high-quality titanium, this torch is built to withstand even the toughest conditions.
Versatile: Whether you need a flood light or a focused beam, this torch can do it all, making it perfect for camping, hiking, and other outdoor activities.', 
'assets/images/products/Electronics/Electronics-Product-1004.png', 1, 100, 7.48, 2, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1005', '4-in-1 OTG Memory Flash Card Adaptor, Reader For TF Card, Charging Port For Apple, SD Card And USB-A Port', 
'Versatile: 4-in-1 design allows you to read and transfer data from multiple memory cards and devices
Easy to use: simply plug and play, no additional software or drivers needed
Time-saving: transfer large files quickly with USB-A port and charging port for Apple devices
Convenient: compact and portable design makes it easy to carry with you on-the-go', 
'assets/images/products/Electronics/Electronics-Product-1005.png', 1, 100, 6.98, 2, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1006', 'Multi-purpose Vacuum Cleaner，Three-in-one Vacuum Cleaner，Vacuum Cleaner，A Home Computer Vacuum Cleaner，Car-mounted Vacuum Cleaner，Vacuum Cleaner，High Suction Vacuum Cleaner', 
'Versatile: Can be used as a home computer vacuum cleaner, car-mounted vacuum cleaner, and regular vacuum cleaner
Three-in-one: Comes with three different attachments for various cleaning needs
High suction power: Provides strong suction power to effectively clean dirt and debris
Portable: Lightweight and easy to carry around for convenient cleaning', 
'assets/images/products/Electronics/Electronics-Product-1006.png', 1, 100, 20.29, 2, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Electronics-Product-1007', 'Objective Lens 1.42inch Eyepiece 0.71inch High-definition 8x Clear Binoculars', 
'High-definition clarity: Enjoy clear and crisp images with the 8x magnification and high-quality objective lens.
Compact and portable: With a 3.6cm objective lens and 1.8cm eyepiece, these binoculars are easy to carry and perfect for outdoor activities.
Easy to use: The simple design makes it easy for anyone to use, whether you are a beginner or an experienced user.
Versatile: Ideal for bird watching, hiking, camping, and other outdoor activities.', 
'assets/images/products/Electronics/Electronics-Product-1007.png', 1, 100, 23.98, 2, NOW());


-- -----------------------------------------------------
-- Sports Outdoor Play
-- -----------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1001', 'Stay Protected From The Sun With Our Lightweight & Portable Pop Up Beach Tent - UPF 50+ UV Protection! Christmas, Halloween, Thanksgiving gift', 
'Sun Protection: UPF 50+ protection keeps you and your family safe from harmful UV rays
Easy to Set Up: Pop-up design allows for quick and easy installation in just a few minutes
Lightweight and Portable: Compact and lightweight design makes it easy to carry and transport to the beach or park
Versatile: Perfect for a day at the beach, park, or even in your own backyard
Durable: Made with high-quality materials to withstand wind and other outdoor elements
Spacious: Provides ample shade and shelter for multiple people
Breathable: Mesh windows and vents allow for air flow to keep you cool and comfortable', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1001.png', 1, 100, 25.13, 3, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1002', '1Pc Portable Summer Outdoor Beach Camping Hammock Durable Hammock Can Hold 400lbs, Portable Hammock With Travel Bag, Perfect For Outdoor/Indoor Patio Backyard Camping(102.36x31.5inch)', 
'Durable and sturdy: can hold up to 400lbs weight capacity
Portable and easy to carry: comes with a travel bag for convenient storage and transportation
Versatile: perfect for outdoor activities such as camping, beach trips, and backyard relaxation
Comfortable: made of high-quality materials to ensure a comfortable and relaxing experience
Easy to set up: can be set up in minutes, no special tools required.', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1002.png', 1, 100, 14.48, 3, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1003', '120.08 Inch/3.05 Meters Four-ring Heightening And Thickening Large-scale Household Swimming Pool Blue And White Single-layer Bottom Square Children Family Inflatable Swimming Pool', 
'Interest: Marine Life
Applicable Age Group: 14+', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1003.png', 1, 100, 100.29, 3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1004', 'Kids Tunnel For Toddlers, Pop Up Play Tunnel Tent For Babies Or Dogs, Indoor & Outdoor Toys For Kids Backyard Playset (Red,Yellow,Blue Play Tent)', 
'Versatile: Perfect for toddlers, babies, and even dogs to play in both indoor and outdoor settings.
Easy to Use: Pop-up design allows for quick and easy set up and storage.
Durable: Made with high-quality materials to withstand rough play and outdoor elements.
Stimulating: Encourages imaginative play and physical activity.
Colorful: Comes in red, yellow, and blue to brighten up any play area.', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1004.png', 1, 100, 16.14, 3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1005', 'Game Tent, Large Children Game Room With Windows, Star Strings, Flags, And Tassel Strings, Easy To Clean, Indoor And Outdoor Game Tents For Children, Boys And Girls Toys, Neutral Color', 
'Interest: Princess
Applicable Age Group: 14+', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1005.png', 1, 100, 65.45, 3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1006', 'Buy Products Jumping Ball, Kids Bouncing Ball, 18 Inch Jumping Ball, Jumping Ball Toy, Kids Hippie Jumping Ball', 
'Interest: Soccer', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1006.png', 1, 100, 8.74, 3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Sports-Outdoor-Play-1007', 'Big Light Ball TPR Blowing Ball Bubble Ball Water Filling Transparent Bubble Ball Water Filling Ball Racket Racket Blowing Ball Round Ball Christmas Halloween gift', 
'Shape: Round
Interest: Dogs
Material: Plastic
Feature: Reusable
Included Components: Filling Nozzle
Applicable Age Group: 6 Years Old (exclusive) - 8 Years Old (inclusive),8 Years Old (not Included) - 12 Years Old (included)', 
'assets/images/products/SportsOutdoorPlay/Sports-Outdoor-Play-1007.png', 1, 100, 23.98, 3, NOW());


-- -----------------------------------------------------
-- Computer Accessories
-- -----------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1001', 'Laptop Aluminum Alloy Bracket Tablet Computer Stand Ergonomic Design Multi-speed Adjustable Angle', 
'Mount Installation: Stand-mounted-installation
Certifications: No Certification
Material: Aluminum Alloy', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1001.png', 1, 100, 8.48, 4, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1002', 'New Car MP3 Wireless Speaker Multi-function Car MP3 Player Dual USB Car Charger Fast Charge Multi-function', 
'Connector Type: USB
Certifications: FCC
Power Mode: Cigarette Lighter Plugged In
Operating Voltage: ≤36V.', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1002.png', 1, 100, 8.98, 4, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1003', 'Ergonomic Laptop Stand - Aluminum Computer Riser - For 10-17 Notebooks - Metal Holder For Desk', 
'Ergonomic design for comfortable typing and viewing angle
Sturdy aluminum construction for durability and stability
Compatible with a wide range of laptops from 10 to 17 inches
Elevates your laptop to reduce neck and eye strain
Improves airflow to keep your laptop cool during use', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1003.png', 1, 100, 22.93, 4, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1004', 'USB C Fast Charger Sacrack 120W Foldable Compact 6 Ports PD Fast Charger Laptop Power Adapter For MacBook Pro/Air And All IPad Pro IPhone14 13/12 Galaxy Note20 S22 Pixel With 5Ft AC Extension Cord', 
'Connector Type: USB
Charger Features: Travel
Certifications: UL
Connector Polarity: Female To Male
Charging Adapter Feature: Travel
Power Mode: Power Supply
Operating Voltage: 85V-265V
Plug Specification: US Plug
Battery Properties: Without Battery', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1004.png', 1, 100, 16.84, 4, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1005', 'Laptop Sleeve Bag For MacBook Air For Mac Pro M1 13/14/15/16 Inch Surface For Lenovo For Dell For HP Computer Bag Accessories Polyester Case With Pocket', 
'Certifications: No Certification', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1005.png', 1, 100, 7.51, 4, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1006', '7 In 1 Multitool Pen, Multitool Pen, Multi Tool Pen, Screwdriver Multitool, Multi Tool For Men, Multitool, Mens Valentines Gifts, 
Cool Gadgets For Men,tools For Men,small Multitool,multitool For Men,Phillips Screwdriver, Gifts For For Men Dad Fathers Day, Cool Gadgets Gifts', 
'Versatile: This 7 in 1 multitool pen includes a screwdriver, Phillips screwdriver, and more!
Convenient: The compact size makes it easy to carry in your pocket or bag.
Durable: Made with high-quality materials to withstand daily use.
Perfect Gift: Ideal for men who love cool gadgets and tools. Great for Valentines Day, Fathers Day, or any occasion.
Multi-Purpose: Use it for DIY projects, outdoor activities, or everyday tasks.
Stylish: The sleek design adds a touch of sophistication to your tool collection.
Easy to Use: Simply twist to switch between tools and get the job done quickly.', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1006.png', 1, 100, 4.74, 4, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) 
VALUES ('Computer-Accessories-1007', 'Nylon Braided USB Data Charging Cable For IPhone 6 6S 7 8 Plus X XR XS 11 12 13 14 Pro Max 5SFor Airpods IPad Air 2 Fast Charging Cable', 
'High-quality nylon braided material ensures durability and longevity of the cable
Compatible with a wide range of Apple devices, including iPhone 6 to 14 Pro Max, Airpods, and iPad Air 2
Fast charging capability saves you time and keeps your devices powered up
Data transfer function allows for easy syncing of files and media between devices
Tangle-free design makes it easy to store and use.', 
'assets/images/products/ComputerAccessories/Computer-Accessories-1007.png', 1, 100, 4.74, 4, NOW());