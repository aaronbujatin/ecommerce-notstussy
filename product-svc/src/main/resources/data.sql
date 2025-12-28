INSERT INTO category(name, description) VALUES ('Twinkle Twinkle', 'Twinkle Twinkle are a group of tiny stars, and they collectively tell stories of courage, longing,and love.');
INSERT INTO category(name, description) VALUES ('SKULLPANDA', 'SKULLPANDA journeys through different worlds, taking on various personas and living out myriad lives. On this grand adventure, it''s on a quest to find its truest self and break new ground all while contemplating the shape of infinity.');
INSERT INTO category(name, description) VALUES ('Hirono', 'Created by contemporary artist Lang, Hirono is a complex character.');
INSERT INTO category(name, description) VALUES ('DIMOO', 'In the real world, DIMOO is a shy little boy who wants to explore and meet new friends, but he''s often held back by his fears. His favorite pastime is sleeping.');

INSERT INTO product (name, description, images, created_at, updated_at, category_id)
    VALUES ('SKULLPANDA × Wednesday Plush（Nevermore Academy Uniform Version)', 'Brand: POP MART. PRODUCT SIZE: Height about 13.5cm. Material: Polyester/ PVC /ABS / Acrylic Fiber', array[
        'https://prod-eurasian-res.popmart.com/default/20251022_095931_327041____1_____1200x1200.jpg',
        'https://prod-eurasian-res.popmart.com/default/20251022_095931_113150____2_____1200x1200.jpg',
        'https://prod-eurasian-res.popmart.com/default/20251022_095931_431199____3_____1200x1200.jpg'
        ], current_timestamp, current_timestamp, 2);

INSERT INTO product_unit(product_unit_type, price, stock, product_id)
VALUES ('SINGLE_BOX', 1400.00, 10, 1);
INSERT INTO product_unit(product_unit_type, price, stock, product_id)
VALUES ('WHOLE_SET', 12600.00, 10, 1);

--INSERT INTO product (description, images, name, price, stock, created_at, updated_at, category_id) VALUES ('Brand: POP MART. PRODUCT SIZE: Height about 9cm. Material: PVC/ABS', array[
--        'https://prod-eurasian-res.popmart.com/default/20250507_140818_777949____1_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250508_142747_768582____2_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250508_142747_697925____3_____1200x1200.jpg'
--        ], 'SKULLPANDA × MY MELODY Plush', 1700.00, 10, current_timestamp, current_timestamp, 1);
--INSERT INTO product (description, images, name, price, stock, created_at, updated_at, category_id)VALUES ('Brand: POP MART. PRODUCT SIZE: Height about 9cm. Material: PVC/ABS', array[
--        'https://prod-eurasian-res.popmart.com/default/20250530_144734_788862____1_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250530_144734_376913____2_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250530_144734_438053____4_____1200x1200.jpg'
--        ], 'SKULLPANDA L’impressionnisme Series Plush Doll', 1150.00, 10, current_timestamp, current_timestamp, 2);
--INSERT INTO product (description, images, name, price, stock, created_at, updated_at, category_id) VALUES ('Brand: POP MART. PRODUCT SIZE: Height about 9cm. Material: PVC/ABS', array[
--        'https://prod-eurasian-res.popmart.com/default/20241204_104538_458431____1_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20241204_104538_007328____2_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20241204_104538_591915____4_____1200x1200.jpg'
--        ], 'SKULLPANDA Winter Symphony Series Plush', 1150.00, 10, current_timestamp, current_timestamp, 2);
--INSERT INTO product (description, images, name, price, stock, created_at, updated_at, category_id) VALUES ('Brand: POP MART. PRODUCT SIZE: Height about 9cm. Material: PVC/ABS', array[
--        'https://prod-eurasian-res.popmart.com/default/20250909_155209_828203____1_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250508_142747_768582____2_____1200x1200.jpg',
--        'https://prod-eurasian-res.popmart.com/default/20250909_155209_655143____3_____1200x1200.jpg'
--        ], 'SKULLPANDA You Found Me! Series Plush Doll Pendant', 1400.00, 10, current_timestamp, current_timestamp, 2);