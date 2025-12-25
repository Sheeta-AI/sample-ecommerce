-- Create products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    stock_code VARCHAR(50) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100),
    brand VARCHAR(100),
    weight DECIMAL(8, 3),
    dimensions VARCHAR(100),
    color VARCHAR(50),
    material VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    stock_quantity INTEGER DEFAULT 0,
    reorder_level INTEGER DEFAULT 10,
    supplier_id VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for faster lookups
-- CREATE INDEX idx_products_stock_code ON products(stock_code);
-- CREATE INDEX idx_products_category ON products(category);
-- CREATE INDEX idx_products_brand ON products(brand);
-- CREATE INDEX idx_products_is_active ON products(is_active);
-- CREATE INDEX idx_products_unit_price ON products(unit_price);