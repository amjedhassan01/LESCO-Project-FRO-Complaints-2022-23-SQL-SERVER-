                                                        # FULL REPORT LESCO PROJECT FRO COMPLAINTS 2022-23 #  
SELECT COUNT(SHUT_TIME) AS 'TOTAL COMPLAINTS' FROM lesco.dbo.cmp;                                                                                                        # TOTAL COMPLAINTS = 5742
SELECT AVG(EFFICIENCY) as AVERAGE_EFFICIENCY from lesco.dbo.cmp;                                                                                                         # AVERAGE EFFICIENCY = 143 %
SELECT  count(shut_time)/365 AS AVERAGE_COMPLAINTS_per_DAY from lesco.dbo.cmp;                                                                                           # AVERAGE COMPLAINTS PER DAY = 15
SELECT  count(shut_time)/12 AS AVERAGE_COMPLAINTS_per_MONTH from lesco.dbo.cmp;                                                                                          # AVERAGE COMPLAINTS PER MONTH = 478
SELECT shifts, COUNT(shifts) as 'complaints' from lesco.dbo.cmp GROUP BY Shifts ORDER by Shifts;                                                                         # COMPLAINTS BY SHIFTS
SELECT YEAR(SHUT_TIME) as 'Year', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.dbo.cmp GROUP by YEAR(SHUT_TIME);                                                          # COMPLAINTS BY YEARS
SELECT DATEPART(QQ,SHUT_TIME) as 'QUARTER', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.dbo.cmp GROUP by DATEPART(QQ,SHUT_TIME) ORDER BY DATEPART(QQ,SHUT_TIME);         # COMPLAINTS BY QUARTERS
SELECT MONTH(SHUT_TIME) as 'MONTH', COUNT(SHUT_TIME) as 'Complaints' FROM lesco.dbo.cmp GROUP by MONTH(SHUT_TIME) order by MONTH(shut_time);                             # COMPLAIANTS BY MONTHS
SELECT REASON, COUNT(REASON) as 'complaints' from lesco.dbo.cmp GROUP BY REASON ORDER by REASON;                                                                         # COMPLAIANTS BY REASONS
SELECT Batch_no , COUNT(Batch_no) as 'Complaints' FROM lesco.dbo.cmp GROUP by Batch_no order by Batch_no;                                                                # COMPLAIANTS BY BATCH NO.s



                                                        # MORE QUERIES... #

SELECT * FROM lesco.dbo.cmp where reason = '14 FAULT IN CABLE OF CONSUMER & METERS TO CONS' and shifts = '2nd shift';
SELECT  AVG(EFFICIENCY) AS EFFICEICY_IN_NOVEMBER FROM lesco.dbo.cmp where month(SHUT_TIME) = 11;
SELECT  AVG(EFFICIENCY) AS EFFICEICY_IN_TF_COMPLAINTS FROM lesco.dbo.cmp where REASON = '12 fault in distribution transformer';
SELECT  count(shut_time)/12 AS AVERAGE_TF_COMPLAINTS_per_MONTH from lesco.dbo.cmp WHERE REASON = '12 fault in distribution transformer';
SELECT  count(shut_time)/365 AS AVERAGE_TF_COMPLAINTS_per_DAY from lesco.dbo.cmp WHERE REASON = '12 fault in distribution transformer';

                                                        # MORE QUERIES... #

SELECT * FROM lesco.dbo.cmp where shifts = '1st shift';  # 1ST SHIFT COMPLAINTS = 2489 
SELECT * FROM lesco.dbo.cmp where shifts = '2nd shift';  # 2ND SHIFT COMPLAINTS = 2363 
SELECT * FROM lesco.dbo.cmp where shifts = '3rd shift';  # 3RD SHIFT COMPLAINTS = 890 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2023-01-01';     # YEAR 2022 COMPLAINTS = 2811 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2023-01-01' and Shut_TIME < '2023-07-01';     # YEAR 2023 COMPLAINTS = 2931 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2022-10-01';     # YEAR 2022 3RD QUARTER (JUL-SEP) COMPLAINTS = 1893 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-10-01' and Shut_TIME < '2023-01-01';     # YEAR 2022 4TH QUARTER (OCT-DEC) COMPLAINTS = 918 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2023-01-01' and Shut_TIME < '2023-04-01';     # YEAR 2023 1ST QUARTER (JAN-MAR) COMPLAINTS = 1333 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2023-04-01' and Shut_TIME < '2023-07-01';     # YEAR 2023 2ND QUARTER (APR-JUN) COMPLAINTS = 1598 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-07-01' and Shut_TIME < '2022-08-01';     # JULY 2022 COMPLAINTS = 702 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-08-01' and Shut_TIME < '2022-09-01';     # AUGUST 2022 COMPLAINTS = 686 
SELECT * from lesco.dbo.cmp where Shut_TIME > '2022-09-01' and Shut_TIME < '2022-10-01';     # SEPTEMBER 2022 COMPLAINTS = 505 
SELECT * from lesco.dbo.cmp where month(SHUT_TIME) = 10;                                     # OCTOBER 2022 COMPLAINTS = 384 
SELECT * from lesco.dbo.cmp where month(SHUT_TIME) = 11;                                     # NOVEMBER 2022 COMPLAINTS = 203 
SELECT * from lesco.dbo.cmp where month(SHUT_TIME) = 12;                                     # DECEMBER 2022 COMPLAINTS = 331 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-01-01' and '2023-02-01';           # JANUARY 2023 COMPLAINTS = 478 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-02-01' and '2023-03-01';           # FEBRUARY 2023 COMPLAIANTS = 433 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-03-01' and '2023-04-01';           # MARCH 2023 COMPLAINTS = 422 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-04-01' and '2023-05-01';           # APRIL 2023 COMPLAINTS = 460 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-05-01' and '2023-06-01';           # MAY 2023 COMPLAINTS = 393 
SELECT * from lesco.dbo.cmp where Shut_TIME BETWEEN '2023-06-01' and '2023-07-01';           # JUNE 2023 COMPLAINTS = 745 
SELECT * FROM lesco.dbo.cmp where reason = '8 FAULT OF 11KV SYSTEM AT G/STATION';            # FAULT OF 11KV SYSTEM AT G/STATION = 1 
SELECT * FROM lesco.dbo.cmp where reason = '09 FAULT IN 11 KV FEEDER';                       # FAULT IN 11KV FEEDER = 117 
SELECT * FROM lesco.dbo.cmp where reason = '10 FAULT IN 11 KV FEEDER DUE TO ACCIDENT';       # FAULT IN 11KV FEEDER DUE TO ACCIDENT = 3 
SELECT * FROM lesco.dbo.cmp where reason = '12 FAULT IN DISTRIBUTION TRANSFORMER';           # FAULT IN DISTRIBUTION TRANSFORMER = 1901 
SELECT * FROM lesco.dbo.cmp where reason = '13 FAULT IN LT LINES';                           # FAULT IN LT LINES = 404 
SELECT * FROM lesco.dbo.cmp where reason = '14 FAULT IN CABLE OF CONSUMER & METERS TO CONS'; # FAULT IN CABLE OF CONSUMER & METERS TO CONS = 3217 
SELECT * FROM lesco.dbo.cmp where reason = '15 FAULT IN WIRING OF CONSUMER';                 # FAULT IN WIRING OF CONSUMER = 99 
SELECT * FROM lesco.dbo.cmp where Batch_no = 1;                                              # 1ST BATCH COMPLAINTS = 491
SELECT * FROM lesco.dbo.cmp where Batch_no = 2;                                              # 2ND BATCH COMPLAINTS = 326
SELECT * FROM lesco.dbo.cmp where Batch_no = 3;                                              # 3RD BATCH COMPLAINTS = 703
SELECT * FROM lesco.dbo.cmp where Batch_no = 4;                                              # 4TH BATCH COMPLAINTS = 155
SELECT * FROM lesco.dbo.cmp where Batch_no = 5;                                              # 5TH BATCH COMPLAINTS = 233
SELECT * FROM lesco.dbo.cmp where Batch_no = 6;                                              # 6TH BATCH COMPLAINTS = 490
SELECT * FROM lesco.dbo.cmp where Batch_no = 7;                                              # 7TH BATCH COMPLAINTS = 614
SELECT * FROM lesco.dbo.cmp where Batch_no = 8;                                              # 8TH BATCH COMPLAINTS = 262
SELECT * FROM lesco.dbo.cmp where Batch_no = 9;                                              # 9TH BATCH COMPLAINTS = 194
SELECT * FROM lesco.dbo.cmp where Batch_no = 10;                                             # 10TH BATCH COMPLAINTS = 371
SELECT * FROM lesco.dbo.cmp where Batch_no = 11;                                             # 11TH BATCH COMPLAINTS = 394
SELECT * FROM lesco.dbo.cmp where Batch_no = 12;                                             # 12TH BATCH COMPLAINTS = 511
SELECT * FROM lesco.dbo.cmp where Batch_no = 13;                                             # 13TH BATCH COMPLAINTS = 401
SELECT * FROM lesco.dbo.cmp where Batch_no = 14;                                             # 14TH BATCH COMPLAINTS = 370
SELECT * FROM lesco.dbo.cmp where Batch_no = 15;                                             # 15TH BATCH COMPLAINTS = 198
SELECT * FROM lesco.dbo.cmp where Batch_no = 17;                                             # 17TH BATCH COMPLAINTS = 3
SELECT * FROM lesco.dbo.cmp where Batch_no = 27;                                             # 27TH BATCH COMPLAINTS = 10
SELECT * FROM lesco.dbo.cmp where Batch_no = 44;                                             # 44TH BATCH COMPLAINTS = 4
SELECT * FROM lesco.dbo.cmp where Batch_no = 46;                                             # 46TH BATCH COMPLAINTS = 12


