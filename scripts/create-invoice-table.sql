-- Create table for invoice/transaction data
-- PostgreSQL version
-- Based on the structure of dataset/data.csv

CREATE TABLE invoices (
    invoice_no VARCHAR(50) NOT NULL,
    stock_code VARCHAR(50) NOT NULL,
    description TEXT,
    quantity INTEGER,
    invoice_date TIMESTAMP NOT NULL,
    unit_price DECIMAL(10, 4) NOT NULL,
    customer_id INTEGER,
    country VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better query performance
-- CREATE INDEX idx_invoices_invoice_no ON invoices(invoice_no);
-- CREATE INDEX idx_invoices_customer_id ON invoices(customer_id);
-- CREATE INDEX idx_invoices_invoice_date ON invoices(invoice_date);
-- CREATE INDEX idx_invoices_stock_code ON invoices(stock_code);
-- CREATE INDEX idx_invoices_country ON invoices(country);