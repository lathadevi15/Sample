-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2025 at 02:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE `name` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(7, 'Manju'),
(8, 'Latha'),
(9, 'vinay'),
(10, 'Latha'),
(11, 'latha'),
(12, 'ram'),
(13, 'ram'),
(14, 'Latha'),
(15, 'latha'),
(16, 'latha'),
(17, 'latha'),
(18, 'Niha'),
(19, 'ram'),
(20, 'latha');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(3) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `correct` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct`) VALUES
(1, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 3),
(2, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 2),
(3, 'Who wrote the national anthem of India?', 'Rabindranath Tagore', 'Bankim Chandra Chattopadhyay', 'Sarojini Naidu', 'Mahatma Gandhi', 1),
(4, 'What is the capital of India?', 'Mumbai', 'New Delhi', 'Kolkata', 'Andhra Pradesh', 2),
(5, 'What is the currency of Japan?', 'Won', 'Peso', 'Yen', 'Rupee', 3),
(6, 'Who discovered gravity?', 'Albert Einstien', 'Issac Newton', 'Nikola Tesla', 'Galileo Galilei', 2),
(7, 'Which is the largest ocean in the world?', 'Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Arcitic Ocean', 1),
(9, 'What is the longest river in the world?', 'Amazon River', 'Yangtze River', 'Mississippi River', 'NileRIver', 4),
(10, 'Who was the first President of the United States?', 'Abraham Lincoln', 'George Washington', 'John Adams', 'Thomas Jefferson', 2),
(11, 'Which country is known as the Land of the Rising Sun?\"', 'China', 'Australia', 'Japan', 'India', 3),
(12, 'Who invented the telephone?', 'Alexander Graham Bell', 'Thomas Edison', 'Nikola Tesla', 'Guglielmo Marconi', 1),
(13, 'What is the name of the weak zone of the earth’s crust?', 'Seismic ', 'Cosmic', 'Formic', 'Anaemic', 1),
(14, 'In 2019, Which popular singer was awarded the Bharat Ratna award?', 'Lata Mangeshkar', ' Asha Bhosle', ' Bhupen Hazarika ', ' Manna Dey ', 3),
(15, 'The world’s nation 5G mobile network was launched by which country?', 'Japan', 'Asia', 'South Korea', 'Malaysia', 3),
(16, ' The father of Indian missile technology is _________________?', 'Dr Homi Bhabha', 'Dr Chidambaram', 'Dr U.R. Rao', 'Dr A.P.J. Abdul Kalam', 4),
(17, ' The green planet in the solar system is?', 'Mars', 'Uranus', 'Venus', 'Earth', 2),
(18, 'Which of these is the small-scale industry in India?', 'Jute industry', 'Paper Industry', 'Textile Industry', 'Handloom Industry', 4),
(19, ' The largest public sector undertaking in the country is?', 'Railways', 'Airways', 'Roadways', 'Iron and Steel Plants', 1),
(20, 'At which place on earth are there days & nights of equal length always?', 'Equator', 'Poles', 'Prime Meridian', 'Nowhere', 1),
(21, 'In 2017, Who was appointed as the new Brand Ambassador for Swachh Bharat Mission?', 'Kangana Ranaut', 'Priyanka Chopra', 'Anushka Sharma', 'Shilpa Shetty', 4),
(22, 'What is the name of the first Indian woman who wins the Man Booker Prize?', 'Salman Rushdie', 'Arundhati Roy', 'V.S. Naipaul', 'Kiran Desai', 2),
(23, 'Fathometer is used to measure', 'Earthquakes', 'Rainfall', ' Ocean depth', 'Sound intensity', 3),
(24, '6 months day and 6 months night - Country Name?', 'Nepal', 'Tibet', 'Norway', 'Iceland', 3),
(25, 'Who is known as the \' Saint of the gutters \'', ' B.R.Ambedkar', 'Mother Teresa', ' Mahatma Gandhi', 'Baba Amte', 2),
(26, 'Who was known as the \'Father of Lok sabha\'', 'Anantasayanam', 'Bashyam', 'Zkir Hussain', 'Mavlankar', 4),
(27, '\'Bagh\', a village in Gwalior is famous for', 'Sculptures', 'Architecture', 'Cave Painting', 'All of the above', 3),
(28, 'Which places is said to be the cathedral city of india?', 'Benaras', 'Kancheepuram', 'Madurai', 'Bhubaneswar', 4),
(29, 'The famous Rock Garden is located in which city?', 'Jaipur', 'Simla', 'Lucknow', 'Chandigarh', 4),
(30, 'The largest and the oldest museum of India is located in the state/union territory of', ' New Delhi', 'West Bengal', 'Uttar Pradesh', 'Andhra Pradesh', 2),
(31, 'Which country has no cinema theaters?', ' Saudi Arabia', 'Iraq', 'Pennsylvania', 'Bhutan', 1),
(32, 'Which city is known as \"City of Blood\" in India ?', 'Jaisalmar', 'Jodhpur', 'Yavatmal', 'Tezpur', 4),
(33, 'The world famous \'Khajuraho\' sculptures are located in', 'Gujarat', ' Madhya Pradesh', 'Orissa', 'Maharashtra', 2),
(34, 'Which of the following has no Skeleton at all?', 'Star fish', 'Sponge', 'Jelly fish', 'Silver fish', 3),
(35, 'What animal has the worst memory?', 'Dog', 'Rat', 'Elephant', 'Dolphin', 3),
(36, 'Which one of the following is not a true fish?', ' Silver fish', 'Saw fish', 'Hammer fish', 'Sucker fish', 4),
(37, 'Which among the following have a \'mixed heart\'?', 'Reptiles', 'Nematodes', 'Birds', 'Fishes', 1),
(38, 'There are three types of lists in Indian Constitution, viz., the Union List, the State list and the _____\r\n\r\n ', 'District List', 'Panchayat List', 'Concurrent List', 'No option is correct', 3),
(39, 'Who proposed the Preamble before the Drafting Committee of the Constitution', 'Jawaharlal Nehru', ' B.R. Ambedkar', 'B.N.Rau', 'Mahatma Gandhi', 1),
(40, 'Union Budget is always presented first in ________', 'The Lok Sabha', 'The Rajya Sabha', ' Joint session of the Parliament', ' Meeting of the Union Cabinet', 1),
(41, 'Who is the guardian of fundamental Rights enumerated in Indian Constitution?', 'Supreme Court', 'Parliament', 'Constitution', 'President', 1),
(42, 'The first Law Officer of the Government of India is the', 'Union Law Minister', 'Secreatary, Ministry of Law', 'Attorney-General for India', 'Chief Justice of the Supreme Court', 3),
(43, 'The Constitution of India borrowed the scheme of Indian Federation from the constitution of', 'USA', 'Canada', 'United Kingdom', 'Ireland', 2),
(44, 'In which of the following festivals are boat races a special feature?\r\n\r\n', 'Rongali Bihu', 'Onam', 'Pongal', 'Navratri', 2),
(45, 'The paintings in the Ajanta and Ellora caves are indicative of the development of art under the -', 'Pallavas', 'Chalukyas', 'Pandyas', 'Rashtrakutas', 2),
(46, '\'Madhubani\', a style of folk paintings, is popular in which of the following states in India?\r\n\r\n', ' Uttar Pradesh', 'Rajasthan', ' Madhya Pradesh', ' Bihar', 4),
(47, 'Which of the following places is famous for Chikankari work, which is a traditional art of embroidery?', 'Hyderabad', 'Lucknow', 'Mysore', 'Jaipur', 2),
(48, 'Tansen, a great musician of his time, was in the court of –', 'Akbar', 'Shahjahan', 'Bahadur Shah', 'Jahangir', 1),
(49, 'The tropic of cancer does not pass through which of these Indian states ?', ' Madhya Pradesh', 'West Bengal', ' Rajasthan', 'Odisha', 4),
(50, 'Kapildhara Falls is situated on which river?', 'Sharavati', 'Narmada', 'Tapi', 'Indravati', 2),
(51, 'Which river of India is called Vridha Ganga?', 'Krishna', 'Godavari', 'Kaveri', 'Narmada', 2),
(52, 'Which latitude passes through the middle of India?', 'Arctic Circle', 'Equator', 'Tropic of Capricorn', 'Tropic of Cancer', 4),
(53, 'Which foreign country is closest to Andaman Islands', 'Sri Lanka', 'Indonesia', 'Myanmar', 'Pakistan', 3),
(54, 'Which of the following is a Trans- Himalayan river', 'Ganga', 'Yamuna', 'Indus', 'Ravi', 3),
(55, 'Where is located the world\'s longest glass bridge that was opened for the public on December 24, 2017?', 'Hebei, China', 'Tokyo, Japan', ' Virginia, USA', 'Berlin, Germany', 1),
(56, 'First tuesday of may is observed as', ' Global family Day', 'World Asthma Day', ' World Immunization Day', 'International Human Solidarity Day', 2),
(57, 'November 30 is observed as ______', ' Computer Security Day', 'United Nations Day for South-South Cooperation', ' International Cooperative Day', 'International Human Solidarity Day', 1),
(58, '\r\nOctober 24 is observed as', ' World Vegetarian Day', 'World Environment Day', 'United Nations Day', 'World Immunization Day	', 3),
(59, 'What is the theme of 2017 World Telecommunication and Information Society Day (WTISD)  ?', ' Entrepreneurship for social impact', 'Reduce digital divide', 'Promote digital education for social welfare', ' Big data for big impact', 4),
(60, 'World Blood Donar Day is observed on ___________', ' 14 - June', ' 24 - June', ' 14 - November', ' 24 - November', 1),
(61, 'The deepest lake of the world is ___________.', ' Aral Sea', 'Baikal', 'Caspian Sea', ' Dead Sea', 2),
(62, 'The place of origin of an earthquake is called', 'Epicentre', 'Seismal', 'Focus', 'Amphidromic Point', 3),
(63, 'The Tropic of cancer does not pass through', 'India', 'Bangladesh', 'Myanmar', 'Pakistan', 4),
(64, '__________ is called the \'low country\' of the earth', 'Netherlands', 'Spain', 'Italy', 'Hungary', 1),
(65, 'India accounts for half of the world\'s total number of :', 'Cattle', 'Buffaloes', 'Sheep', 'Camels', 2),
(66, 'Eclipses occur due to which optical phenomena', 'Reflection', 'Refraction', 'Rectilinear propagation', 'Diffraction', 3),
(67, 'The busiest  sea route is ', 'The Mediterranean Red-Sea Route', ' The South Atlantic Route', ' The North Atlantic Route', ' The Pacific Route', 3),
(68, 'National Income estimates in India are prepared by', ' Planning Commission', 'Reserve Bank of India', ' Central statistical organisation', ' Indian statistical Institute', 3),
(69, 'In which area is the public sector most dominant in India?', 'Organised term lending financial instistutions', ' Commerical banking ', 'Transport ', 'Steel production', 2),
(70, 'Which of the following should always be balanced in the foreign trade of India?', ' Balance of Trade', 'Balance of Current Account', 'No option is correct', ' Balance of Payments', 4),
(71, 'In India, Agriculture income is calculated by', 'Output method ', 'Input method', 'Expenditure method', 'Commodity flow method', 1),
(72, 'The minimum forest cover to maintain ecological balance in the plains is', ' 33%', '25%', '40%', '50%', 1),
(73, 'Holkar Trophy is associated with which sport?', 'Bridge', 'Hockey', 'Football', 'Badminton', 1),
(74, 'Term Chinaman is related to which sports ?', 'Football', 'Cricket', 'Hockey', 'Golf', 2),
(75, 'Who is the first Indian woman to win an Asian Games gold in 400m run', 'M.L. Valsamma', 'Kamaljit Sandhu	', ' P.T. Usha', 'K.Malleshwari', 3),
(76, 'With which game does Davis Cup is associated', 'Hockey', 'Table Tennis', 'Polo', 'Lawn Tennis', 4),
(77, 'The first Indian to cross seven important seas by swimming ____ ?', 'Bula Chaudhury ', 'Amrendra Singh', 'Junko Taibei', ' Yuri Gagarin', 1),
(78, 'Nehru trophy is related to which game?', 'Cricket', 'Football', 'Batminton', 'Hockey', 2),
(79, 'Wellington Trophy is related to which game ?', 'Tennis', 'Cricket', 'Rowing ', 'Hockey', 3),
(80, 'The Mansabdari system introduced by Akbar was borrowed from the system prevalent in', 'Mongolia ', 'Persia', 'Afghanistan', 'Turkey', 1),
(81, 'Vasco-Da-Gama became the first European to set foot in India via the sea in____.', '1488', '1498', '1492', '1485', 2),
(82, 'The Saka Era was founded by ', ' Kadphises I', 'Alexander', 'Kanishka ', 'Menander', 3),
(83, 'Who composed the Gayatri Mantra', 'Vasishtha', 'Indra', 'Parikshit', 'Vishvamitra ', 4),
(84, 'Upanishads are books on', 'Philosophy', 'Religion ', 'Law', 'Yoga', 1),
(85, 'Patanjali is well known for the compilation of', 'Panchatantra', ' Yoga Sutra ', 'Brahma Sutra', 'Ayurveda', 2),
(86, 'Who is known as Man of Blood and Iron ?', 'Napoleon', 'Ho Chi Minh', 'Bismarck ', ' Sir Walter Scott', 3),
(87, 'Which is considered as oldest civilization of the world ?', ' Harappan Civilization', ' Chinese Civilization', ' Egyptain Civilization', ' Mesopotamian Civilization 	', 4),
(88, 'Feroz Gandhi Award is associated with', 'Journalism', ' Medical Research', 'Preservation of worldlife', 'Parlimentory debate', 1),
(89, 'Arrange the following descending chronological order based on the year received the nobel prize\r\n\r\nA. Mother Teresa     B. Rabindranath Tagore\r\nC. Dr. C.V Raman        D. S.Chandrashekhar\r\nE. Hargobinda Khurana', 'B,C,E,D,A ', 'B,A,D,C,E ', 'B,C,E,A,D', 'B,A,C,E,D', 2),
(90, 'The journalist who refused to accept Padma Bhushan was', 'Shekharan Nair', 'Arun Shourie', 'Khushwant Singh ', ' Ratan Thiyam', 3),
(91, 'Who among the following is not a recipient of Bharat Ratna', ' Dr. S. Radhakrishnan ', ' Mrs. Indira Gandhi ', ' Lal Bahadur Shastri ', ' Sardar Vallabhbhai Patel', 4),
(92, '\' Global 500 \' awards are given for the outstanding achievement in which of the following fields', 'Protection of environment', ' Population Control', 'campaign against drugs', 'Elimination of illiteracy', 1),
(93, 'Saraswati Samman is given annually for outstanding contribution to', 'Education ', 'Literature ', 'Fine arts', 'Classical Music', 2),
(94, 'Which of the following awards was conferred on Mrs. Kiran Bedi', 'Saraswati', 'Golden Globe', 'Magsaysay', ' Rani Lakshmi ', 3),
(95, 'B.C.Roy Award is given in the field of', 'Journalism ', 'Music', 'Environment', 'Medicine ', 4),
(96, 'World’s highest railway bridge will be constructed on which river  ?', 'Chenab', 'Ganga ', 'Yamuna', 'Kaveri', 1),
(97, 'Which is the coldest of all the planets?', 'Jupiter', 'Neptune ', 'Uranus', 'Pluto', 2),
(98, 'Smallest of all the continents?', 'Asia', 'Africa', 'Australia ', 'America', 3),
(99, 'The year 1995 is the golden Jubilee year of which of the following International Organisations', 'GATT', 'NAM', 'ASEAN', 'UNO', 4),
(100, 'Where is the Headquarter of ASEAN (Association of Southeast Asian Nations)?', 'Jakarta ', 'Beijing ', 'Newyork ', 'Da Nang', 1),
(101, 'The International township built near Pondicherry in India in Collaboration with UNESCO is called', 'Broadway', 'Auroville', 'Gayaville', 'Elbaville', 2),
(102, 'India is not a member of ', ' G - 20', 'SAARC ', ' G - 8 ', 'U.N', 3),
(103, 'Which of the following countries is not a member of the Nuclear Suppliers Group(NSG)', 'Iran', 'France', 'USA', 'Russia', 1),
(104, 'The United Nations declared 2006 as the International year of', 'World population', 'Communication', 'Elderly persons', ' Deserts and Desertification', 4),
(105, 'The working principle of a washing machine is', ' reverse osmosis ', 'centrifugation ', 'diffusion', 'dialysis', 2),
(106, 'What is the standard room temperature in Kelvin?', ' 198 K', '273 K', '98 K', '373 K  ', 3),
(107, 'Nuclear sizes are expressed in a unit named', 'Angstrom', 'Newton ', 'Tesla', 'Fermi', 4),
(108, 'Rocket works on the principle of conservation of', 'Momentum ', 'Mass', 'Velocity', 'Energy ', 1),
(109, 'The speed of light will be minimum while passing through', 'vaccum', 'glass ', 'water', 'air', 2),
(110, 'What is the name of highest Civilian Award in India?', 'Bharata Ratna', 'Padma Sri', 'Padma Bhushan', 'Padma Vibhushan', 1),
(111, 'What is the name of largest Indian State by area?', 'Gujarat', 'Rajasthan', 'Uttart Pradesh', 'Maharastra', 2),
(112, 'Which is the largest Temple in India', 'Ayodhya Temple', 'Nataraja Temple', 'Sri Ranganathaswamy Temple', 'Akshardham', 3),
(113, 'Which state is known as the \'Spice Garden of India\'?', 'Karnataka', 'Tamil Nadu', 'Andhra Pradesh', 'Kerala', 4),
(114, 'What is the name of Indian State that is home to Sunderbans?', 'West Bengal', 'Assam', 'Odisha', 'Maharastra', 1),
(115, 'Which is the largest National Park in India?', 'Gandotri National Park', 'Hemis National Park', 'Sunderbans National Park', 'Indravati National Park', 2),
(116, 'Who was the first Indian woman to climb Mount Everest?', 'Arunima Sinha', 'Santosh Yadav', 'Bachendri Pal', 'Premlata Agarwal', 3),
(117, 'Which city is Known as the \'City of Lakes\'?', 'Jodhpur', 'Bhopal', 'Jaipur', 'Udaipur', 4),
(118, 'What is the name of first Indian Satellite?', 'Aryabhatta', 'Rohini', 'Bhaskara', 'INAT-1B', 1),
(119, 'What is national aquatic animal of India?', 'Tortoise', 'Ganges Dolphin', 'Chennai', 'Jelly Fish', 2),
(120, 'Which Indian state shares its border with Mynmar,Bhutan and China?', 'Arunachal Pradesh', 'Meghalaya', 'Manipur ', 'Nagaland', 1),
(121, 'Which is the first India state to become 100% organic?', 'Kerala', 'Sikkim', 'Meghalaya', 'Odisha', 2),
(122, 'Which city is the capital of Oranges?', 'Karnataka', 'Kerala', 'Nagpur', 'Udaipur', 3),
(123, 'Which ancient king banned tobacco?', 'Akbar', 'Aurangazeb', 'Humayun', 'Jahangir', 4),
(124, 'Where was the first post office opened in India?', 'Kolkata', 'Delhi', 'Mumbai', 'Kerala', 1),
(125, 'Which country produces the most coal?', 'India', 'China', 'South Korea', 'Russia', 2),
(126, 'Which country is called little India?', 'Japan', 'Pakistan', 'Fiji', 'Bhutan', 3),
(127, 'Where is the largest jail in India?', 'Gujarat', 'Rajastan', 'Maharastra', 'Delhi', 4),
(128, 'Which gas is filled in airplane tires?', 'Nitrogen', 'Oxygen', 'Helium', 'Neon', 1),
(129, 'What does a barometer measure?', 'Humidity', 'Atmospheric Pressure', 'Light', 'Sound', 2),
(130, 'Who discovered Pencilin?', 'Issac Newton', 'Mri curie', 'Alexander Flemming', 'Thomas Edison', 3),
(131, 'In what year was the Facebook founded?', '2009', '2010', '2008', '2004', 4),
(132, 'Which fruit is the most papular and consumed in the world wide?', 'Banana', 'Apple', 'Mango', 'Orange', 1),
(133, 'In the Constitution of India, how many fundamental duties are there?', '12', '11', '14', '18', 2),
(134, 'Where Green Park situated?', 'Lucknow', 'Kolkata', 'Kanpur', 'Jaipur', 3),
(135, 'Which is the largest Island?', 'Andaman Nicobar', 'New Guinea', 'Hawali', 'Greenland', 4),
(136, 'The upper house of the parliament is known as', 'The Rajya Sabha', 'The Lok Sabha', 'The Vidhan Sabha', 'The Vidhan Parishad', 1),
(137, 'Which is the lower house of the parliament of India?', 'The Rajya Sabha', 'The Lok Sabha', 'The Vidhan Sabha', 'The Vidhan Parishad', 2),
(138, 'Name the river bank on which Taj Mahal is situated', 'Ganges', 'Godavari', 'Yamuna ', 'Indus', 3),
(139, 'Who was the first Indian Governer-General of Independent India?', 'Rajendra Prasad', 'Dadabai Naoroji', 'Vallabhai Patel', 'C.Rajagopalachari', 4),
(140, 'What is the retirement age of cheif Justice of India?', '65 Years', '60 Years', '58 Years', '70 Years', 1),
(141, 'Who was the first Guru of Sikhs?', 'Guru Har Rai', 'Guru Nanak', 'Guru Ram Das', 'Guru Govind Singh', 2),
(142, 'Silent Valley National Park is situated in which state?', 'Himachal Pradesh', 'Karnataka', 'Kerala', 'Odisha', 3),
(143, 'What is the smallest planet in our Solar System?', 'Neptune', 'Uranus', 'Venus', 'Mercury', 4),
(144, 'Which gas makes up the majority of the Earth\'s atmosphere?', 'Nitrogen', 'Oxygen', 'Carbon dioxide', 'Hydrogen', 1),
(145, 'What is the currency of United Kingdom?', 'Dollar', 'Pound Sterling', 'Euro', 'Yen', 2),
(146, 'What is the largest organ inside the human body?', 'Liver', 'Heart', 'Skin', 'Brain', 1),
(147, 'Which Planet is known as \"Morning Star\" or \"Evening Star\"?', 'Jupiter', 'Venus', 'Mercury', 'Uranus', 2),
(148, 'Which gas is used in balloon to make them float?', 'Oxygen', 'Nitrogen', 'Helium', 'Hydrogen', 3),
(149, 'In which State is the Konark Sun Temple located?', 'Odisha', 'Kerala', 'Tamil Nadu', 'Rajastan', 1),
(150, 'When was the President\'s rule first implemented in India?', '1952', '1951', '1953', '1954', 2),
(151, 'Which country has three capitals?', 'America', 'Canada', 'South Africa', 'Iran', 3),
(152, 'Which country has the most gold?', 'India', 'South Africa', 'Australia', 'America', 4),
(153, 'Which is the longest Highway of India?', 'NH 44', 'NH 48', 'NH 53', 'NH 27', 1),
(154, 'In which state is the Valley of flowers?', 'Haryana', 'Uttarakhand', 'Punjab', 'Assam', 2),
(155, 'Which country is called the country of thirsty land?', 'Nepal', 'Bhutan', 'Australia', 'England', 3),
(156, 'In which state are Ajanta Caves located?', 'Rajastan', 'Kerala', 'Punjab', 'Maharastra', 4),
(157, 'Which country is called the land of thousand lakes?', 'Finland', 'Thailand', 'Germany', 'India', 1),
(158, 'Which state is the largest producer of Soybean?', 'Gujarat', 'Madhya Pradesh', 'Uttar Pradesh', 'Kashmir', 2),
(159, 'Silver fiber revolution is related to which of the following?', 'Leather', 'Cotton', 'Oil Seeds', 'Jute', 2),
(160, 'Who received the first Bharat Ratna Award?', 'Nehru', 'BC Rai', 'CV Raman', 'Govind ballab pant', 3),
(161, 'Approximately how many grams does the human brain weight?', '1100 grams', '1230 grams', '1550 grams', '1350 grams', 4),
(162, 'What is the ant\'s house called?', 'Hill', 'Cave', 'Bombay', 'Daroda', 1),
(163, 'Which is the largest private sector Bank of India?', 'ICICI Bank', 'HDFC Bank', 'Kotak Mahindra Bank', 'Axis Bank', 2),
(164, 'From which country did the game of Chess originate?', 'Nepal', 'America', 'India', 'England', 3),
(165, 'Which is the most expensive currency in the World?', 'Kuwait', 'Dollar', 'Pound', 'Euro', 1),
(166, 'Which is the World\'s largest Intelligence Agency?', 'CIA, America', 'RAW, India', 'MSS, China', 'MOSSAD, Israel', 1),
(167, 'How much time did it take to build Taj Mahal?', '28 years', '22 years', '25 years', '20 years', 2),
(168, 'What is the height of Great Wall of China?', '30 feet', '25 feet', '35 feet', '40 feet', 3),
(169, 'What is the height of Qutub Minar?', '70 meters', '75 meters', '78 meters', '73 meters', 4),
(170, 'What is the largest Railway Station in India?', 'Howrah Junction', 'Gorakhpur Junction', 'New Delhi Junction', 'Chennai Central Junction', 1),
(171, 'When was Google established?', '10th April 1999', '4th September 1998', '4th September 1999', '5th August 1998', 2),
(172, 'Which country has no capital?', 'Tonga', 'Bahrain', 'Nauru', 'Monaco', 3),
(173, 'Which country does not have a single river?', 'South Africa', 'Afghanistan', 'Japan', 'Saudi Arabia', 4),
(174, 'Which country never became a slave of England?', 'Nepal', 'Bhutan', 'Saudi Arabia', 'Iran', 1),
(175, 'Which is called the heaven of India?', 'Himachal Pradesh', 'Jammu and Kashmir', 'Shimla', 'Maharastra', 2),
(176, 'Where did Gautam Budha die?', 'Kushinagar', 'Lumbini', 'Sarnath', 'Went', 1),
(177, 'In which city did the electricity first come in India?', 'New Delhi', 'Kolkata', 'Maharastra', 'Rajastan', 2),
(178, 'Who named the indian currency rupee?', 'Akbar', 'Jahangir', 'Sher shah Suri', 'Humayun', 3),
(179, 'How many states of India shares their border with India?', '3', '6', '4', '5', 4),
(180, 'Which river is called the sorrow of Bihar?', 'Kosi River', 'Gomti River', 'Bhagirathi River', 'Gandak River', 1),
(181, 'When did the Jallianwala Bagh massacare take place?', '1920', '1919', '1925', '1909', 2),
(182, 'Where was the  capital of India before Delhi?', 'Lucknow', 'Punjab', 'Kolkata', 'Mumbai', 3),
(183, 'Which city is called the City of Roses?', 'Punjab', 'Benaras', 'Lucknow', 'Chandigarh', 4),
(184, 'When did man land on Moon for the first time?', '1950', '1964', '1970', '1969', 4),
(185, 'In which country are white Elephants found?', 'India', 'Thailand', 'America ', 'Russia', 2),
(186, 'What was the old name of SBI?', 'Imperial Bank of India', 'Bank of Hindustan', 'Bank of State', 'None of these', 1),
(187, 'In Which year Arjuna Award started?', '1960', '1953', '1961', '1957', 3),
(188, 'National Voter\'s day celebrated every year on which day?', '25th January', '24th January', '23rd April', '24th November', 1),
(189, 'Who is the Constitutional Head of India?', 'Prime Minister', 'President', 'Speaker of Lok Sabha', 'Vice President', 2),
(190, 'Where did the East India Company open its first factory in India', 'Kolkata', 'Mysore', 'Surat', 'Banglore', 3),
(191, 'When was the first amendment made in Indian Constitution?', '1947', '1949', '1954', '1951', 4),
(192, 'Durand Cup is related to which game?', 'Football', 'Hockey', 'Cricket', 'Judo', 1),
(193, 'If the President of India wants to resign, to whom will he submit his resignation?', 'Prime Minister', 'Vice President', 'Lok Sabha Speaker', 'Judge of Supreme Court', 2),
(194, 'What is the maximum number of seats in the Lok Sabha in India?', '80', '82', '81', '75', 1),
(195, 'Who discovered Proton?', 'Chadwick', 'Goldstein', 'Rutherford', 'Albert Enstien', 3),
(196, 'Where was the India\'s first nuclear power house established?', 'Udaipur', 'Hyderabad', 'Ranchi', 'Tarapur', 4),
(197, 'The fundamental duties in the Indian Constitution have been taken from the Constitution of which country?', 'USA', 'Ireland', 'France', 'Russia', 1),
(198, 'Where did the head quarter of World Trade Organization located?', 'New Delhi', 'Geneva', 'New York', 'Abu dabi', 2),
(199, 'When was the national Anthem of India sung for the first time?', '1920', '1917', '1911', '1923', 3),
(200, 'Which game is the Hopman Cup associated?', 'Football', 'Cricket', 'Hockey', 'Tennis', 4),
(201, 'What is the currency of Mynmar?', 'Kyat', 'Taka', 'Yang', 'Ruble', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
