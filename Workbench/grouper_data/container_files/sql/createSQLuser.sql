ALTER system SET max_connections=250;
ALTER system SET shared_buffers='180MB';
CREATE USER grouper PASSWORD 'password';
CREATE DATABASE grouper;
GRANT ALL PRIVILEGES ON DATABASE grouper TO grouper;
ALTER DATABASE grouper OWNER TO grouper;
