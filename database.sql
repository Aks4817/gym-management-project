-- Adding sample data to the Member table
INSERT INTO Member (first_name, last_name, gender, date_of_birth, email, phone_number, address)
VALUES
    ('John', 'Doe', 'M', '1990-05-15', 'john.doe@example.com', '+1234567890', '123 Main St, City'),
    ('Jane', 'Smith', 'F', '1988-08-25', 'jane.smith@example.com', '+1987654321', '456 Elm St, Town'),
    ('Mike', 'Johnson', 'M', '1995-02-10', 'mike.johnson@example.com', '+1122334455', '789 Oak St, Village'),
    ('Emily', 'Brown', 'F', '1992-11-20', 'emily.brown@example.com', '+1555666777', '101 Pine St, Hamlet'),
    ('David', 'Lee', 'M', '1985-07-30', 'david.lee@example.com', '+1444333222', '321 Cedar St, Suburb');

-- Adding sample data to the Membership table
INSERT INTO Membership (member_id, start_date, end_date, membership_type, monthly_fee, payment_status)
VALUES
    (1, '2024-01-01', '2024-12-31', 'Premium', 50.00, TRUE),
    (2, '2024-02-15', '2024-08-14', 'Standard', 40.00, TRUE),
    (3, '2024-03-10', '2024-09-09', 'Standard', 40.00, FALSE),
    (4, '2024-04-20', '2024-10-19', 'Premium', 50.00, FALSE),
    (5, '2024-01-05', '2024-07-04', 'Standard', 40.00, TRUE);

-- Adding sample data to the Trainer table
INSERT INTO Trainer (first_name, last_name, gender, date_of_birth, email, phone_number, address)
VALUES
    ('Michael', 'Smith', 'M', '1980-04-05', 'michael.smith@example.com', '+1122334455', '123 Trainer St, City'),
    ('Jessica', 'Brown', 'F', '1985-09-15', 'jessica.brown@example.com', '+1987654321', '456 Coach St, Town'),
    ('Chris', 'Johnson', 'M', '1990-12-20', 'chris.johnson@example.com', '+1444333222', '789 Instructor St, Village'),
    ('Sarah', 'Wilson', 'F', '1988-06-10', 'sarah.wilson@example.com', '+1555666777', '101 Gym St, Hamlet'),
    ('Alex', 'Davis', 'M', '1995-03-25', 'alex.davis@example.com', '+1234567890', '321 Fitness St, Suburb');

-- Adding sample data to the Exercise table
INSERT INTO Exercise (name, description, type)
VALUES
    ('Bench Press', 'Lift barbell off the rack and lower it to chest level, then press it back up.', 'Strength'),
    ('Treadmill', 'Walk, jog, or run on a moving surface.', 'Cardio'),
    ('Squats', 'Lower body exercise, bending the knees and hips while lowering the torso.', 'Strength'),
    ('Stationary Bike', 'Cycling exercise done on a stationary bike.', 'Cardio'),
    ('Deadlift', 'Lift a loaded barbell or bar off the ground to the hips.', 'Strength');

-- Adding sample data to the Workout table
INSERT INTO Workout (member_id, trainer_id, date, duration_minutes, notes)
VALUES
    (1, 1, '2024-04-10', 60, 'Focused on upper body strength training.'),
    (2, 2, '2024-04-11', 45, 'Cardio session on treadmill.'),
    (3, 3, '2024-04-12', 75, 'Full-body strength training with emphasis on legs.'),
    (4, 4, '2024-04-13', 60, 'HIIT workout incorporating various exercises.'),
    (5, 5, '2024-04-14', 90, 'Focused on lower body strength training and core exercises.');

-- Adding sample data to the Workout_Exercise table
INSERT INTO Workout_Exercise (workout_id, exercise_id, sets, reps, weight)
VALUES
    (1, 1, 3, 10, 100.00),
    (1, 3, 3, 12, 80.00),
    (2, 4, 1, 30, NULL),
    (2, 2, 1, NULL, NULL),
    (3, 5, 4, 8, 120.00),
    (4, 1, 3, 8, 110.00),
    (4, 3, 3, 10, 90.00),
    (5, 5, 4, 10, 130.00),
    (5, 2, 1, NULL, NULL);

-- Adding sample data to the Payment table
INSERT INTO Payment (membership_id, amount, payment_date)
VALUES
    (1, 50.00, '2024-04-01'),
    (2, 40.00, '2024-04-05'),
    (3, 40.00, '2024-04-10'),
    (4, 50.00, '2024-04-15'),
    (5, 40.00, '2024-04-20');
