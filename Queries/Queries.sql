-- Total Users
SELECT COUNT(*) AS total_users
FROM users;

-- Premium Users
SELECT *
FROM users
WHERE subscription_type = 'Premium';

-- Total Revenue
SELECT SUM(payment_amount) AS total_revenue
FROM payments;

-- Pending Tickets
SELECT *
FROM support_tickets
WHERE ticket_status = 'Pending';

-- High Priority Tickets
SELECT ticket_id, issue_type
FROM support_tickets
WHERE priority_level = 'High';

-- Tickets Per AI Model
SELECT a.model_name,
       COUNT(s.ticket_id) AS total_tickets
FROM ai_models a
JOIN support_tickets s
ON a.model_id = s.model_id
GROUP BY a.model_name;

-- Average Chatbot Response Time
SELECT AVG(response_time_seconds) AS avg_response_time
FROM chatbot_interactions;

-- Escalation Rate
SELECT
    ROUND(
        SUM(CASE WHEN escalation_required = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS escalation_rate
FROM chatbot_interactions;

-- Top Paying Users
SELECT u.full_name,
       SUM(p.payment_amount) AS total_spent
FROM users u
JOIN payments p
ON u.user_id = p.user_id
GROUP BY u.full_name
ORDER BY total_spent DESC;

-- Ticket Resolution Time
SELECT ticket_id,
       TIMESTAMPDIFF(HOUR, created_at, resolved_at) AS resolution_hours
FROM support_tickets
WHERE resolved_at IS NOT NULL;
