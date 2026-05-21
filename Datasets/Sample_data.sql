INSERT INTO users VALUES
(1, 'Rahul Sharma', 'India', '2025-01-10', 'Premium'),
(2, 'Aman Gupta', 'India', '2025-02-12', 'Free'),
(3, 'Sarah Lee', 'USA', '2025-03-01', 'Premium'),
(4, 'John Miller', 'Canada', '2025-03-20', 'Enterprise'),
(5, 'Priya Mehta', 'India', '2025-04-05', 'Free');

INSERT INTO ai_models VALUES
(101, 'GPT Assist Lite', 2023, 84.50),
(102, 'GPT Assist Pro', 2024, 91.80),
(103, 'Vision AI Bot', 2025, 88.30);

INSERT INTO support_tickets VALUES
(1001, 1, 102, 'Billing', 'Resolved', 'High', '2025-05-01 10:00:00', '2025-05-01 12:00:00'),
(1002, 2, 101, 'Login Error', 'Pending', 'Medium', '2025-05-02 09:30:00', NULL),
(1003, 3, 103, 'Bug Report', 'Resolved', 'High', '2025-05-02 11:00:00', '2025-05-02 14:30:00'),
(1004, 4, 102, 'Feature Request', 'Resolved', 'Low', '2025-05-03 13:00:00', '2025-05-04 09:00:00'),
(1005, 5, 101, 'Account Issue', 'Escalated', 'High', '2025-05-03 15:00:00', NULL);

INSERT INTO chatbot_interactions VALUES
(201, 1001, 15, 0.85, 18, FALSE),
(202, 1002, 8, 0.40, 35, TRUE),
(203, 1003, 20, 0.92, 12, FALSE),
(204, 1004, 10, 0.75, 20, FALSE),
(205, 1005, 25, 0.30, 45, TRUE);

INSERT INTO human_agents VALUES
(1, 'Neha Singh', 'Technical Support', 4),
(2, 'Arjun Verma', 'Billing Support', 2),
(3, 'Emily Clark', 'Customer Success', 5);

INSERT INTO ticket_assignments VALUES
(1, 1002, 1, '2025-05-02 10:00:00'),
(2, 1005, 3, '2025-05-03 16:00:00');

INSERT INTO payments VALUES
(1, 1, 999.00, '2025-05-01', 'UPI'),
(2, 3, 1999.00, '2025-05-02', 'Credit Card'),
(3, 4, 4999.00, '2025-05-03', 'Bank Transfer');
