-- Retrieve the names of members who have not made any payments
SELECT first_name, last_name
FROM Member
WHERE member_id NOT IN (SELECT member_id FROM Membership WHERE payment_status = TRUE);

-- Calculate the total duration of workouts for each member in minutes
SELECT m.first_name, m.last_name, COALESCE(SUM(w.duration_minutes), 0) AS total_duration_minutes
FROM Member m
LEFT JOIN Workout w ON m.member_id = w.member_id
GROUP BY m.member_id;

-- Find the average monthly fee of memberships for male members
SELECT AVG(m.monthly_fee) AS average_monthly_fee
FROM Membership m
JOIN Member mb ON m.member_id = mb.member_id
WHERE mb.gender = 'M';

-- List the trainers who have not conducted any workouts
SELECT t.first_name, t.last_name
FROM Trainer t
LEFT JOIN Workout w ON t.trainer_id = w.trainer_id
WHERE w.workout_id IS NULL;

-- Retrieve the exercises that were not part of any workout
SELECT e.name
FROM Exercise e
LEFT JOIN Workout_Exercise we ON e.exercise_id = we.exercise_id
WHERE we.workout_id IS NULL;

-- Find the member who made the highest payment
SELECT m.first_name, m.last_name
FROM Member m
JOIN Membership ms ON m.member_id = ms.member_id
JOIN Payment p ON ms.membership_id = p.membership_id
ORDER BY p.amount DESC
LIMIT 1;

-- Retrieve the top 5 most common types of exercises
SELECT type, COUNT(*) AS exercise_count
FROM Exercise
GROUP BY type
ORDER BY exercise_count DESC
LIMIT 5;

-- Calculate the total revenue generated from payments made in the current year
SELECT SUM(amount) AS total_revenue
FROM Payment
WHERE EXTRACT(YEAR FROM payment_date) = EXTRACT(YEAR FROM CURRENT_DATE);

-- List the members who have registered before the age of 25
SELECT first_name, last_name
FROM Member
WHERE date_of_birth > CURRENT_DATE - INTERVAL '25 years';

-- Retrieve the membership details of members whose monthly fee is higher than the average monthly fee
SELECT m.*, ms.*
FROM Member m
JOIN Membership ms ON m.member_id = ms.member_id
WHERE ms.monthly_fee > (SELECT AVG(monthly_fee) FROM Membership);
