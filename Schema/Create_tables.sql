CREATE DATABASE ai_support_analytics;

USE ai_support_analytics;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE,
    subscription_type VARCHAR(20)
);

CREATE TABLE ai_models (
    model_id INT PRIMARY KEY,
    model_name VARCHAR(50),
    launch_year INT,
    accuracy_score DECIMAL(5,2)
);

CREATE TABLE support_tickets (
    ticket_id INT PRIMARY KEY,
    user_id INT,
    model_id INT,
    issue_type VARCHAR(50),
    ticket_status VARCHAR(20),
    priority_level VARCHAR(20),
    created_at DATETIME,
    resolved_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (model_id) REFERENCES ai_models(model_id)
);

CREATE TABLE chatbot_interactions (
    interaction_id INT PRIMARY KEY,
    ticket_id INT,
    messages_exchanged INT,
    sentiment_score DECIMAL(4,2),
    response_time_seconds INT,
    escalation_required BOOLEAN,
    FOREIGN KEY (ticket_id) REFERENCES support_tickets(ticket_id)
);

CREATE TABLE human_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    department VARCHAR(50),
    experience_years INT
);

CREATE TABLE ticket_assignments (
    assignment_id INT PRIMARY KEY,
    ticket_id INT,
    agent_id INT,
    assigned_at DATETIME,
    FOREIGN KEY (ticket_id) REFERENCES support_tickets(ticket_id),
    FOREIGN KEY (agent_id) REFERENCES human_agents(agent_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    user_id INT,
    payment_amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
