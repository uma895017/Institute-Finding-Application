-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 12:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `eq_data`
--

CREATE TABLE `eq_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eq_data`
--

INSERT INTO `eq_data` (`id`, `name`, `email`, `phone`) VALUES
(9, 'lucky', 'laksheyumrow@gmail.com', '9812338947'),
(10, 'atish', 'atish420@gmail.con', '8544778951');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `longi` varchar(255) NOT NULL,
  `lati` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `institute`, `address`, `phone`, `website`, `longi`, `lati`, `date`, `course`, `description`, `status`) VALUES
(1, '9i technology', 'SCO 198-200(3rd floor, sector 34A, sector 34\r\n,Chandigarh,160022)', '8872024001', 'https://www.9itech.com', '30.730401061435774', '76.768244165963', '27/07/2023', 'Java,Php,Andriod,Python,ReactWith ', 'Alumni from prestigious Punjab Engineering College, we pride ourselves in one of the best Training Companies in region. With over 50000 students undergoing our Courses Online and In-Class, we are the No. 1 Training Company for IT Training. With our cloud based platform LearningKart.com, we are recognised by students world over for our quality courses.', 'Active'),
(2, 'INDIAN CODING ACADEMY', '4th Floor, BDS Ventures, 3, Sector 34A, Sector 34, Chandigarh, 160022', '9414314368', 'http://indiancoding.com', '30.73055241536789', '76.76448841452537', '27/06/2023', 'Java,Python,App development,\r\nGame development,CSS', 'We cannot solve problems with the kind of thinking we employed when we came up with them', 'Active'),
(3, 'Webx Technology', '131, 34A, Sector 34B, Sector 34, Chandigarh, 160022', '9914714558', 'https://www.webxtechnology.org', '30.732030888190565', '76.76642460949817', '27/07/2023', 'Mysql,Java,python,Software testing', '100% Job Placement In : MEAN Stack, NodeJS Training,PHP Training, Java Training, Android Training, Software Testing, React JS and Reactive Native AngularJS!!\r\nNew batches starts every week', 'Active'),
(4, 'Code Infotech', 'SCO 96-97, 2nd Floor, Sector 34A, Chandigarh, 160022', '098882 28278', 'https://codeinfotech.co.in', '30.728671692635686', '76.76623680591604', '27/07/2023', 'Python,Java,Php,AutoCad,C,C++,Digital marketing', 'TOMORROW IS HERE', 'Acitve'),
(5, 'Corporate School Python Training', 'S-C-O 80-81-82 4th Floor, Sector 34A, Chandigarh, 160022', '9915032272', '', '30.733422274870268', '76.76865979221901', '27/07/2023', 'Python', 'Success is not final; failure is not fatal: It is the courage to continue that counts.', 'Active'),
(6, 'Webtech Learning', 'SCO - 54-55, III Level, near IELTS Learning Institute, Sector 34B,Chandigarh', '9878375376', 'webtechlearning.com', '30.73321131618232', '76.76824335141622', '27/07/2023', 'Video editing, Digital marketing,Software testing,Pyhton ', 'Our wide range of information-technology and digital marketing courses are customized according to the needs of the students\r\nand the ever-changing requirements of the digital industry.', 'Active'),
(7, 'QUASTECH - Software Testing Course', 'SCF 62, Third Floor, Phase 7, Sector 61, Mohali, Punjab 160062', '7208008461', 'https://www.quastech.in', '30.762632999857843', '76.73477459237303', '28/07/2023', ' Python Development, Java Development course, python data science,', 'WE OFFER RETAIL AND CORPORATE TRAINING FOR SOFTWARE TESTING, AUTOMATION TESTING, PYTHON DEVELOPMENT, MACHINE LEARNING, DATA SCIENCE, ARTIFICIAL INTELLIGENCE, JAVA DEVELOPMENT, FULL STACK JAVA DEVELOPMENT, FULL STACK PYTHON DEVELOPMENT, SELENIUM, PHP & MYSQL, DIGITAL MARKETING, ENGLISH COMMUNICATION, WEB DESIGNING, , ISTQB CERTIFICATION, OCJP CERTIFICATION INDUSTRIAL TRAINING IN MUMBAI & MOHALI.', 'Active'),
(8, 'Smart Programming', 'Smart Programming, Golden Square, 527, Fifth Floor, near RISHI APARTMENT-2, Metro, Zirakpur, Punjab 140603', '6283830308', 'https://smartprogramming.in', '30.652868314115313', '76.82151196503243', '27/07/2023', 'linux, Ethical hacking ,Machine learning , Data science , Java', 'Its not only about Coding...Its about bringing \"Ideas to Life\"...!!  ', 'Active'),
(9, 'AAR-CODES Institute', 'Aar-Codes Spoken English and Computer Institute, SCO 5,sohi market, Tribune Colony Rd, Baltana, 140603', '9888393246', 'http://aarcodesinstitute.com', '30.684693226380897', '76.82129265919136', '27/07/2023', 'C/C++,PYTHON', 'AR-CODES SPOKEN ENGLISH AND COMPUTER INSTITUTE came into commencement into 2015 with the aim of providing high quality education related to Information technology, Hardware/Software Consultancy and Personality Development.', 'Active'),
(10, 'Sharp Web Studio Coding ', 'SCF 213, Green City, near Mamta Enclave, Dhakoli, Zirakpur, Punjab 160104', '8558805595', 'https://swscodingclasses.in', '30.67435480369873', '76.84339318428646', '27/07/2023', 'Graphic Designing\r\nUX / UI Designing\r\nMobile Application Designing\r\nAndroid App learning\r\nIOS App Learning', 'SWS Coding Classes is a subsidiary of Sharp Web Studio and is a pioneer in providing the top class computer education, coding classes and IT training.', 'Active'),
(11, 'NITC (Computer & Commerce Institute)', 'SCO 47, Old Ambala Rd, Guru Nanak Enclave, Dhakoli, Zirakpur, Punjab 160104', '7889077566', 'https://nitc.ac.in', '30.66365175011335', '76.8413599533783', '28/07/2023', 'C, C++, Python, Web Designing, Tally Advance Excel ', '11 Years of expertise in Education with Experienced & Qualified Teachers using latest technology to impower practical knowledge to students with best curriculum in industry to take on changing & competitive enviornment.', 'Active'),
(12, 'Disha Computer Institute', 'SCO 14, 1st floor, Ambala Exp way, near Royal Estate, Zirakpur, Punjab 140603', '7081467080', 'https://dishacomputer.org.in', '30.661334374459916', '76.81876538410653', '27/07/2023', 'C\r\nC++\r\ndata-structures\r\nVisual Basic\r\njava\r\nSQL\r\nPHP\r\npython\r\n', 'That’s changing the way the world learns', 'Active'),
(13, 'Verma Programming Minds', '4th Floor, C-133, Phase-8, Industrial Area, Sector 62,Mohali, Punjab 160055', '9779904224', 'https://vermaprogrammingminds.tech', '30.72113545873459', '76.7106593964152', '28/07/2023', 'Pyhton,C,C++,Java', 'Best place to learn coding', 'Active'),
(14, 'Techlive Solutions:Best IT Trainings, ', 'E -92 Ground Floor, near, OATI INDIA, 8, Phase-8, Industrial Area, Sector 73, Mohali, Punjab 160059', '8872033244', 'https://www.techlive.biz', '30.715492664232418', '76.71091045044821', '28/07/2023', 'Web designe , Java ,Pyhton ,C ,C++', 'Tech-live is an advanced Software Technology Training cum Development Company, training students and fresher’s and transforms them into experts. We are a leading custom development and software outsourcing agency since 2013. Our company focuses on the development of customized software applications and offshore software outsourcing facilities.', 'Active'),
(15, 'EME Technologies', 'EME Technologies, C-134, PUNCOM TECHNOLOGY PARK, PCL CHOWK, Phase-8, Industrial Area, mohali, Punjab 160071', '7355303131', 'https://www.emetechnologies.com', '30.723998391031035', '76.71159111089592', '28/07/2023\r\n', 'Digital Marketing,Software Development', 'Over the past decade, EME has been one of the fastest growing technology companies not only in Chandigarh but in the India. What has been the source of EME’s success during this period of economic turmoil A combination of technical expertise and an innovative management philosophy that unleashed the innovative thinking of empowered employees.', 'active'),
(18, 'CODING DSA ', 'Primary wing,150,second Floor Sector 47, Near DPS school , gurugram , Haryana', '8860519905', 'codingdsa.con', '28.50345', '77.03121', '18/08/2023', 'Java, Python, Javascript, C', 'Classes for coding, Data structure and DSA', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eq_data`
--
ALTER TABLE `eq_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eq_data`
--
ALTER TABLE `eq_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
