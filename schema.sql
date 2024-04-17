CREATE TABLE Member (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255),
    registration_date DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE Membership (
    membership_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Member(member_id),
    start_date DATE NOT NULL,
    end_date DATE,
    membership_type VARCHAR(50),
    monthly_fee DECIMAL(10, 2),
    payment_status BOOLEAN DEFAULT FALSE
);

CREATE TABLE Trainer (
    trainer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255),
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE Exercise (
    exercise_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    type VARCHAR(50)
);

CREATE TABLE Workout (
    workout_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Member(member_id),
    trainer_id INT REFERENCES Trainer(trainer_id),
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    duration_minutes INT,
    notes TEXT
);

CREATE TABLE Workout_Exercise (
    workout_id INT REFERENCES Workout(workout_id),
    exercise_id INT REFERENCES Exercise(exercise_id),
    sets INT,
    reps INT,
    weight DECIMAL(10, 2),
    PRIMARY KEY (workout_id, exercise_id)
);

CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    membership_id INT REFERENCES Membership(membership_id),
    amount DECIMAL(10, 2),
    payment_date DATE NOT NULL DEFAULT CURRENT_DATE
);
