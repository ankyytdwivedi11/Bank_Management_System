-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 10:24 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: mybank
--

-- --------------------------------------------------------

--
-- Table structure for table branch
--

CREATE TABLE branch (
  branchId int(11) NOT NULL,
  branchNo varchar(111) NOT NULL,
  branchName varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table branch
--

INSERT INTO branch (branchId, branchNo, branchName) VALUES
(1, '100101', 'Banglore'),
(2, '100102', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table feedback
--

CREATE TABLE feedback (
  feedbackId int(11) NOT NULL,
  message text NOT NULL,
  userId double NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table feedback
--

INSERT INTO feedback (feedbackId, message, userId, date) VALUES
(1, 'This is testing message to admin or manager by bhupendra', 1, '2024-03-21 10:30:48'),
(2, 'This is testing message to admin or manager by amit', 2, '2024-03-21 10:30:48'),
(3, 'this is help card for admin', 1, '2024-03-21 10:45:20');

-- --------------------------------------------------------

--
-- Table structure for table login
--

CREATE TABLE login (
  id int(11) NOT NULL,
  email varchar(111) NOT NULL,
  password varchar(111) NOT NULL,
  type varchar(111) NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table login
--

INSERT INTO login (id, email, password, type, date) VALUES
(1, 'cashier1@cashier.com', 'cashier1', 'cashier', '2024-03-21 10:30:48'),
(2, 'manager@manager.com', 'manager', 'manager', '2024-03-21 10:30:48'),
(3, 'amit@gmail.com', 'amit', 'type', '2024-03-21 10:30:48'),
(4, 'mohit@gmail.com', 'mohit', 'type', '2024-03-21 10:30:48'),
(5, 'cashier2@cashier.com', 'cashier2', 'cashier', '2024-03-21 10:30:48');

-- --------------------------------------------------------

--
-- Table structure for table notice
--

CREATE TABLE notice (
  id int(11) NOT NULL,
  userId varchar(111) NOT NULL,
  notice text NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table notice
--

INSERT INTO notice (id, userId, notice, date) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch', '2024-03-21 10:30:48'),
(6, '2', 'Dear Customer,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> MCB </kbd> branch for new prospectus.', '2024-03-21 10:30:48');

-- --------------------------------------------------------

--
-- Table structure for table otheraccounts
--

CREATE TABLE otheraccounts (
  id int(11) NOT NULL,
  accountNo varchar(111) NOT NULL,
  bankName varchar(111) NOT NULL,
  holderName varchar(111) NOT NULL,
  balance varchar(111) NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table otheraccounts
--

INSERT INTO otheraccounts (id, accountNo, bankName, holderName, balance, date) VALUES
(1, '12001122', 'AMC', 'Amit Kumar', '40800', '2024-03-21 11:55:07'),
(2, '12001123', 'AMC', 'Mohit Kuamr', '71000', '2024-03-21 11:55:07'),
(3, '12001124', 'AMC', 'Aryan Raj', '71000', '2024-03-21 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table transaction
--

CREATE TABLE transaction (
  transactionId int(11) NOT NULL,
  action varchar(111) NOT NULL,
  credit varchar(111) NOT NULL,
  debit varchar(111) NOT NULL,
  balance varchar(111) NOT NULL,
  beneId varchar(111) NOT NULL,
  other varchar(111) NOT NULL,
  userId int(11) NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table transaction
--

INSERT INTO transaction (transactionId, action, credit, debit, balance, beneId, other, userId, date) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2024-03-21 07:54:18'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2024-03-21 07:54:18'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2024-03-21 07:54:18'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2024-03-21 07:54:18'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2024-03-21 07:54:18'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2024-03-21 07:54:18'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2024-03-21 07:54:18'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2024-03-21 07:54:18'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2024-03-21 07:54:18'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2024-03-21 07:54:18'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2024-03-21 07:54:18'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2024-03-21 07:54:18'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2024-03-21 07:54:18'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2024-03-21 07:54:18');

-- --------------------------------------------------------

--
-- Table structure for table useraccounts
--

CREATE TABLE useraccounts (
  id int(11) NOT NULL,
  email text NOT NULL,
  password text NOT NULL,
  name varchar(111) NOT NULL,
  balance varchar(111) NOT NULL,
  cnic varchar(111) NOT NULL,
  number varchar(111) NOT NULL,
  city varchar(111) NOT NULL,
  address varchar(111) NOT NULL,
  source varchar(111) NOT NULL,
  accountNo varchar(111) NOT NULL,
  branch varchar(111) NOT NULL,
  accountType varchar(111) NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table useraccounts
--

INSERT INTO useraccounts (id, email, password, name, balance, cnic, number, city, address, source, accountNo, branch, accountType, date) VALUES
(1, 'some@gmail.com', 'some', 'Ayan', '9800', '01', '9764986598', 'Kolkata', 'arekere', 'Programmer', '1005469', '1', 'Current', '2024-03-21 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Bhupendra', '16000', '02', '6798876795', 'Pune', 'gottigere', 'Programmer', '10054777', '1', 'Saving', '2024-03-21 04:50:06'),
(6, 'real1@gmail.com', 'real1', 'Tushar', '234234', '03', '7989864858', 'Delhi', 'gottigere', 'Govt. job', '1513410739', '1', 'saving', '2024-03-21 07:52:40'),
(7, 'real2@gmail.com', 'real2', 'Ankit Samuel', '12121', '04', '9874587987', 'Banglore', 'hulimavu', 'Govt. job', '1513410837', '1', 'current', '2024-03-21 07:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table branch
--
ALTER TABLE branch
  ADD PRIMARY KEY (branchId);

--
-- Indexes for table feedback
--
ALTER TABLE feedback
  ADD PRIMARY KEY (feedbackId);

--
-- Indexes for table login
--
ALTER TABLE login
  ADD PRIMARY KEY (id);

--
-- Indexes for table notice
--
ALTER TABLE notice
  ADD PRIMARY KEY (id);

--
-- Indexes for table otheraccounts
--
ALTER TABLE otheraccounts
  ADD PRIMARY KEY (id);

--
-- Indexes for table transaction
--
ALTER TABLE transaction
  ADD PRIMARY KEY (transactionId);

--
-- Indexes for table useraccounts
--
ALTER TABLE useraccounts
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table branch
--
ALTER TABLE branch
  MODIFY branchId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table feedback
--
ALTER TABLE feedback
  MODIFY feedbackId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table login
--
ALTER TABLE login
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table notice
--
ALTER TABLE notice
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table otheraccounts
--
ALTER TABLE otheraccounts
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table transaction
--
ALTER TABLE transaction
  MODIFY transactionId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table useraccounts
--
ALTER TABLE useraccounts
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
