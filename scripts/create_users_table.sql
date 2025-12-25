-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    customer_id VARCHAR(20) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(50),
    country VARCHAR(100) NOT NULL,
    address TEXT,
    city VARCHAR(100),
    postal_code VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index for faster lookups
-- CREATE INDEX idx_users_customer_id ON users(customer_id);
-- CREATE INDEX idx_users_email ON users(email);
-- CREATE INDEX idx_users_country ON users(country);