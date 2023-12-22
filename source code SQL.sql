-- dataset - https://www.kaggle.com/datasets/berkeleyearth/climate-change-earth-surface-temperature-data 


-- To see what all states are considered 
SELECT distinct State
FROM temperature_state_wise;	
-- Andhra Pradesh Arunachal Pradesh Assam Bihar Chhattisgarh Delhi Goa Gujarat Haryana Himachal Pradesh Jammu And Kashmir Jharkhand Karnataka Kerala Madhya Pradesh Maharashtra Manipur Meghalaya Mizoram Nagaland Orissa Punjab Rajasthan Sikkim Tamil Nadu Tripura Uttar Pradesh Uttaranchal West Bengal

-- To get the number of states considered
SELECT count(DISTINCT State)
FROM temperature_state_wise;
-- 29

-- To get the maximum temperature received by a state 
SELECT *
FROM temperature_state_wise
WHERE AverageTemperature = (SELECT MAX(AverageTemperature)
FROM temperature_state_wise);
-- # date, AverageTemperature, State
-- '2012-06-01', '36.339', 'Delhi'

-- To get the minimum temperature received by a state 
SELECT *
FROM temperature_state_wise
WHERE AverageTemperature = (SELECT MIN(AverageTemperature)
FROM temperature_state_wise);
-- # date, AverageTemperature, State
-- 1995-01-01, -10.407, Jammu And Kashmir


-- To get the temperature received by all states in the month of April from 1980 to 2013  
SELECT *
FROM temperature_state_wise
WHERE EXTRACT(MONTH FROM date) = 04
  AND EXTRACT(DAY FROM date) = 01
  AND EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013;
  /* # date, AverageTemperature, State
1980-04-01, 32.125, Andhra Pradesh
1981-04-01, 31.778, Andhra Pradesh
1982-04-01, 31.286, Andhra Pradesh
1983-04-01, 31.819, Andhra Pradesh
1984-04-01, 31.253, Andhra Pradesh
1985-04-01, 32.238, Andhra Pradesh
1986-04-01, 31.809, Andhra Pradesh
1987-04-01, 32.05, Andhra Pradesh
1988-04-01, 31.109, Andhra Pradesh
1989-04-01, 31.453, Andhra Pradesh
1990-04-01, 31.704, Andhra Pradesh
1991-04-01, 31.479, Andhra Pradesh
1992-04-01, 31.44, Andhra Pradesh
1993-04-01, 31.36, Andhra Pradesh
1994-04-01, 30.98, Andhra Pradesh
1995-04-01, 31.295, Andhra Pradesh
1996-04-01, 30.99, Andhra Pradesh
1997-04-01, 29.748, Andhra Pradesh
1998-04-01, 31.959, Andhra Pradesh
1999-04-01, 32.184, Andhra Pradesh
2000-04-01, 32.26, Andhra Pradesh
2001-04-01, 30.923, Andhra Pradesh
2002-04-01, 32.116, Andhra Pradesh
2003-04-01, 31.949, Andhra Pradesh
2004-04-01, 31.879, Andhra Pradesh
2005-04-01, 31.311, Andhra Pradesh
2006-04-01, 31.413, Andhra Pradesh
2007-04-01, 31.42, Andhra Pradesh
2008-04-01, 31.042, Andhra Pradesh
2009-04-01, 32.092, Andhra Pradesh
2010-04-01, 32.736, Andhra Pradesh
2011-04-01, 30.335, Andhra Pradesh
2012-04-01, 31.7, Andhra Pradesh
2013-04-01, 31.973, Andhra Pradesh
1980-04-01, 14.521, Arunachal Pradesh
1981-04-01, 13.583, Arunachal Pradesh
1982-04-01, 13.412, Arunachal Pradesh
1983-04-01, 12.623, Arunachal Pradesh
1984-04-01, 14.561, Arunachal Pradesh
1985-04-01, 14.465, Arunachal Pradesh
1986-04-01, 13.168, Arunachal Pradesh
1987-04-01, 13.713, Arunachal Pradesh
1988-04-01, 14.269, Arunachal Pradesh
1989-04-01, 13.739, Arunachal Pradesh
1990-04-01, 12.594, Arunachal Pradesh
1991-04-01, 13.779, Arunachal Pradesh
1992-04-01, 14.295, Arunachal Pradesh
1993-04-01, 13.884, Arunachal Pradesh
1994-04-01, 14.155, Arunachal Pradesh
1995-04-01, 14.304, Arunachal Pradesh
1996-04-01, 14.717, Arunachal Pradesh
1997-04-01, 12.799, Arunachal Pradesh
1998-04-01, 14.427, Arunachal Pradesh
1999-04-01, 16.486, Arunachal Pradesh
2000-04-01, 14.024, Arunachal Pradesh
2001-04-01, 13.992, Arunachal Pradesh
2002-04-01, 14.192, Arunachal Pradesh
2003-04-01, 14.741, Arunachal Pradesh
2004-04-01, 13.889, Arunachal Pradesh
2005-04-01, 14.189, Arunachal Pradesh
2006-04-01, 13.895, Arunachal Pradesh
2007-04-01, 14.408, Arunachal Pradesh
2008-04-01, 14.595, Arunachal Pradesh
2009-04-01, 15.562, Arunachal Pradesh
2010-04-01, 14.554, Arunachal Pradesh
2011-04-01, 14.608, Arunachal Pradesh
2012-04-01, 13.869, Arunachal Pradesh
2013-04-01, 14.413, Arunachal Pradesh
1980-04-01, 23.856, Assam
1981-04-01, 22.055, Assam
1982-04-01, 22.042, Assam
1983-04-01, 21.776, Assam
1984-04-01, 23.549, Assam
1985-04-01, 23.348, Assam
1986-04-01, 22.078, Assam
1987-04-01, 22.623, Assam
1988-04-01, 23.395, Assam
1989-04-01, 22.999, Assam
1990-04-01, 21.455, Assam
1991-04-01, 22.745, Assam
1992-04-01, 23.518, Assam
1993-04-01, 22.463, Assam
1994-04-01, 22.941, Assam
1995-04-01, 23.51, Assam
1996-04-01, 23.707, Assam
1997-04-01, 21.453, Assam
1998-04-01, 23.089, Assam
1999-04-01, 25.129, Assam
2000-04-01, 22.97, Assam
2001-04-01, 23.181, Assam
2002-04-01, 22.554, Assam
2003-04-01, 23.257, Assam
2004-04-01, 21.973, Assam
2005-04-01, 22.894, Assam
2006-04-01, 22.831, Assam
2007-04-01, 23.148, Assam
2008-04-01, 23.636, Assam
2009-04-01, 24.191, Assam
2010-04-01, 23.468, Assam
2011-04-01, 23.341, Assam
2012-04-01, 22.601, Assam
2013-04-01, 23.407, Assam
1980-04-01, 30.123, Bihar
1981-04-01, 27.497, Bihar
1982-04-01, 27.804, Bihar
1983-04-01, 26.914, Bihar
1984-04-01, 29.491, Bihar
1985-04-01, 29.718, Bihar
1986-04-01, 28.251, Bihar
1987-04-01, 28.564, Bihar
1988-04-01, 29.135, Bihar
1989-04-01, 28.845, Bihar
1990-04-01, 28.201, Bihar
1991-04-01, 28.325, Bihar
1992-04-01, 29.528, Bihar
1993-04-01, 27.754, Bihar
1994-04-01, 28.264, Bihar
1995-04-01, 28.919, Bihar
1996-04-01, 28.986, Bihar
1997-04-01, 26.679, Bihar
1998-04-01, 28.165, Bihar
1999-04-01, 30.749, Bihar
2000-04-01, 28.992, Bihar
2001-04-01, 28.846, Bihar
2002-04-01, 28.833, Bihar
2003-04-01, 29.566, Bihar
2004-04-01, 28.718, Bihar
2005-04-01, 28.966, Bihar
2006-04-01, 29.102, Bihar
2007-04-01, 29.202, Bihar
2008-04-01, 28.94, Bihar
2009-04-01, 29.732, Bihar
2010-04-01, 31.099, Bihar
2011-04-01, 27.979, Bihar
2012-04-01, 29.106, Bihar
2013-04-01, 28.364, Bihar
1980-04-01, 32.291, Chhattisgarh
1981-04-01, 31.033, Chhattisgarh
1982-04-01, 30.779, Chhattisgarh
1983-04-01, 30.385, Chhattisgarh
1984-04-01, 30.873, Chhattisgarh
1985-04-01, 31.636, Chhattisgarh
1986-04-01, 30.996, Chhattisgarh
1987-04-01, 31.169, Chhattisgarh
1988-04-01, 30.917, Chhattisgarh
1989-04-01, 31.069, Chhattisgarh
1990-04-01, 30.651, Chhattisgarh
1991-04-01, 30.725, Chhattisgarh
1992-04-01, 31.071, Chhattisgarh
1993-04-01, 30.65, Chhattisgarh
1994-04-01, 30.291, Chhattisgarh
1995-04-01, 30.452, Chhattisgarh
1996-04-01, 30.643, Chhattisgarh
1997-04-01, 28.776, Chhattisgarh
1998-04-01, 30.782, Chhattisgarh
1999-04-01, 32.615, Chhattisgarh
2000-04-01, 32.25, Chhattisgarh
2001-04-01, 30.342, Chhattisgarh
2002-04-01, 31.628, Chhattisgarh
2003-04-01, 31.594, Chhattisgarh
2004-04-01, 31.407, Chhattisgarh
2005-04-01, 30.762, Chhattisgarh
2006-04-01, 30.834, Chhattisgarh
2007-04-01, 31.172, Chhattisgarh
2008-04-01, 30.743, Chhattisgarh
2009-04-01, 31.789, Chhattisgarh
2010-04-01, 33.015, Chhattisgarh
2011-04-01, 29.475, Chhattisgarh
2012-04-01, 31.371, Chhattisgarh
2013-04-01, 30.853, Chhattisgarh
1980-04-01, 30.976, Delhi
1981-04-01, 29.892, Delhi
1982-04-01, 27.876, Delhi
1983-04-01, 26.043, Delhi
1984-04-01, 29.69, Delhi
1985-04-01, 29.794, Delhi
1986-04-01, 29.026, Delhi
1987-04-01, 30.067, Delhi
1988-04-01, 30.658, Delhi
1989-04-01, 28.167, Delhi
1990-04-01, 28.983, Delhi
1991-04-01, 28.149, Delhi
1992-04-01, 28.766, Delhi
1993-04-01, 29.062, Delhi
1994-04-01, 28.114, Delhi
1995-04-01, 28.74, Delhi
1996-04-01, 29.519, Delhi
1997-04-01, 27.34, Delhi
1998-04-01, 29.802, Delhi
1999-04-01, 31.384, Delhi
2000-04-01, 31.266, Delhi
2001-04-01, 29.155, Delhi
2002-04-01, 30.945, Delhi
2003-04-01, 30.752, Delhi
2004-04-01, 31.433, Delhi
2005-04-01, 29.322, Delhi
2006-04-01, 30.364, Delhi
2007-04-01, 31.331, Delhi
2008-04-01, 29.609, Delhi
2009-04-01, 30.182, Delhi
2010-04-01, 32.809, Delhi
2011-04-01, 28.956, Delhi
2012-04-01, 29.341, Delhi
2013-04-01, 29.304, Delhi
1980-04-01, 29.374, Goa
1981-04-01, 28.924, Goa
1982-04-01, 28.531, Goa
1983-04-01, 28.396, Goa
1984-04-01, 29.05, Goa
1985-04-01, 28.946, Goa
1986-04-01, 29.478, Goa
1987-04-01, 29.395, Goa
1988-04-01, 29.095, Goa
1989-04-01, 28.852, Goa
1990-04-01, 28.88, Goa
1991-04-01, 29.013, Goa
1992-04-01, 28.792, Goa
1993-04-01, 28.746, Goa
1994-04-01, 28.467, Goa
1995-04-01, 29.151, Goa
1996-04-01, 28.958, Goa
1997-04-01, 28.179, Goa
1998-04-01, 29.995, Goa
1999-04-01, 28.936, Goa
2000-04-01, 29.285, Goa
2001-04-01, 29.005, Goa
2002-04-01, 29.635, Goa
2003-04-01, 29.29, Goa
2004-04-01, 29.1, Goa
2005-04-01, 28.826, Goa
2006-04-01, 28.703, Goa
2007-04-01, 29.461, Goa
2008-04-01, 28.56, Goa
2009-04-01, 29.594, Goa
2010-04-01, 29.907, Goa
2011-04-01, 28.42, Goa
2012-04-01, 28.97, Goa
2013-04-01, 28.789, Goa
1980-04-01, 31.431, Gujarat
1981-04-01, 30.238, Gujarat
1982-04-01, 29.288, Gujarat
1983-04-01, 27.886, Gujarat
1984-04-01, 31.126, Gujarat
1985-04-01, 29.89, Gujarat
1986-04-01, 30.603, Gujarat
1987-04-01, 30.26, Gujarat
1988-04-01, 31.239, Gujarat
1989-04-01, 29.662, Gujarat
1990-04-01, 30.002, Gujarat
1991-04-01, 29.905, Gujarat
1992-04-01, 29.077, Gujarat
1993-04-01, 29.962, Gujarat
1994-04-01, 29.688, Gujarat
1995-04-01, 29.563, Gujarat
1996-04-01, 30.284, Gujarat
1997-04-01, 28.756, Gujarat
1998-04-01, 31.14, Gujarat
1999-04-01, 30.928, Gujarat
2000-04-01, 31.387, Gujarat
2001-04-01, 30.433, Gujarat
2002-04-01, 31.185, Gujarat
2003-04-01, 31.043, Gujarat
2004-04-01, 31.31, Gujarat
2005-04-01, 30.286, Gujarat
2006-04-01, 29.8, Gujarat
2007-04-01, 31.37, Gujarat
2008-04-01, 30.338, Gujarat
2009-04-01, 31.337, Gujarat
2010-04-01, 32.155, Gujarat
2011-04-01, 30.293, Gujarat
2012-04-01, 30.537, Gujarat
2013-04-01, 30.176, Gujarat
1980-04-01, 29.608, Haryana
1981-04-01, 28.68, Haryana
1982-04-01, 26.522, Haryana
1983-04-01, 24.734, Haryana
1984-04-01, 28.211, Haryana
1985-04-01, 28.389, Haryana
1986-04-01, 27.703, Haryana
1987-04-01, 28.783, Haryana
1988-04-01, 29.561, Haryana
1989-04-01, 26.922, Haryana
1990-04-01, 27.77, Haryana
1991-04-01, 26.672, Haryana
1992-04-01, 27.441, Haryana
1993-04-01, 27.922, Haryana
1994-04-01, 27.017, Haryana
1995-04-01, 27.264, Haryana
1996-04-01, 28.427, Haryana
1997-04-01, 26.281, Haryana
1998-04-01, 28.71, Haryana
1999-04-01, 30.428, Haryana
2000-04-01, 30.082, Haryana
2001-04-01, 27.978, Haryana
2002-04-01, 29.766, Haryana
2003-04-01, 29.493, Haryana
2004-04-01, 30.472, Haryana
2005-04-01, 28.139, Haryana
2006-04-01, 28.827, Haryana
2007-04-01, 30.451, Haryana
2008-04-01, 28.441, Haryana
2009-04-01, 28.999, Haryana
2010-04-01, 31.669, Haryana
2011-04-01, 27.656, Haryana
2012-04-01, 27.993, Haryana
2013-04-01, 28.319, Haryana
1980-04-01, 12.135, Himachal Pradesh
1981-04-01, 11.204, Himachal Pradesh
1982-04-01, 9.43, Himachal Pradesh
1983-04-01, 7.862, Himachal Pradesh
1984-04-01, 10.707, Himachal Pradesh
1985-04-01, 11.244, Himachal Pradesh
1986-04-01, 10.088, Himachal Pradesh
1987-04-01, 11.095, Himachal Pradesh
1988-04-01, 12.152, Himachal Pradesh
1989-04-01, 9.397, Himachal Pradesh
1990-04-01, 10.07, Himachal Pradesh
1991-04-01, 9.139, Himachal Pradesh
1992-04-01, 10.47, Himachal Pradesh
1993-04-01, 10.837, Himachal Pradesh
1994-04-01, 9.485, Himachal Pradesh
1995-04-01, 9.515, Himachal Pradesh
1996-04-01, 10.956, Himachal Pradesh
1997-04-01, 9.661, Himachal Pradesh
1998-04-01, 11.376, Himachal Pradesh
1999-04-01, 13.045, Himachal Pradesh
2000-04-01, 12.245, Himachal Pradesh
2001-04-01, 11.067, Himachal Pradesh
2002-04-01, 11.989, Himachal Pradesh
2003-04-01, 11.749, Himachal Pradesh
2004-04-01, 12.791, Himachal Pradesh
2005-04-01, 10.858, Himachal Pradesh
2006-04-01, 10.788, Himachal Pradesh
2007-04-01, 13.357, Himachal Pradesh
2008-04-01, 10.91, Himachal Pradesh
2009-04-01, 11.611, Himachal Pradesh
2010-04-01, 13.803, Himachal Pradesh
2011-04-01, 10.453, Himachal Pradesh
2012-04-01, 10.939, Himachal Pradesh
2013-04-01, 11.299, Himachal Pradesh
1980-04-01, 5.568, Jammu And Kashmir
1981-04-01, 4.783, Jammu And Kashmir
1982-04-01, 3.355, Jammu And Kashmir
1983-04-01, 1.996, Jammu And Kashmir
1984-04-01, 4.132, Jammu And Kashmir
1985-04-01, 5.046, Jammu And Kashmir
1986-04-01, 3.451, Jammu And Kashmir
1987-04-01, 4.274, Jammu And Kashmir
1988-04-01, 5.331, Jammu And Kashmir
1989-04-01, 2.674, Jammu And Kashmir
1990-04-01, 3.396, Jammu And Kashmir
1991-04-01, 2.647, Jammu And Kashmir
1992-04-01, 4.009, Jammu And Kashmir
1993-04-01, 4.885, Jammu And Kashmir
1994-04-01, 2.672, Jammu And Kashmir
1995-04-01, 2.512, Jammu And Kashmir
1996-04-01, 4.129, Jammu And Kashmir
1997-04-01, 3.786, Jammu And Kashmir
1998-04-01, 5.107, Jammu And Kashmir
1999-04-01, 5.9, Jammu And Kashmir
2000-04-01, 5.796, Jammu And Kashmir
2001-04-01, 4.886, Jammu And Kashmir
2002-04-01, 5.315, Jammu And Kashmir
2003-04-01, 4.887, Jammu And Kashmir
2004-04-01, 6.191, Jammu And Kashmir
2005-04-01, 4.171, Jammu And Kashmir
2006-04-01, 3.792, Jammu And Kashmir
2007-04-01, 7.178, Jammu And Kashmir
2008-04-01, 4.329, Jammu And Kashmir
2009-04-01, 4.839, Jammu And Kashmir
2010-04-01, 6.695, Jammu And Kashmir
2011-04-01, 4.11, Jammu And Kashmir
2012-04-01, 4.707, Jammu And Kashmir
2013-04-01, 4.902, Jammu And Kashmir
1980-04-01, 31.447, Jharkhand
1981-04-01, 28.893, Jharkhand
1982-04-01, 29.468, Jharkhand
1983-04-01, 28.787, Jharkhand
1984-04-01, 30.56, Jharkhand
1985-04-01, 30.895, Jharkhand
1986-04-01, 29.698, Jharkhand
1987-04-01, 29.833, Jharkhand
1988-04-01, 30.259, Jharkhand
1989-04-01, 30.51, Jharkhand
1990-04-01, 29.353, Jharkhand
1991-04-01, 29.723, Jharkhand
1992-04-01, 30.538, Jharkhand
1993-04-01, 28.998, Jharkhand
1994-04-01, 29.33, Jharkhand
1995-04-01, 30.304, Jharkhand
1996-04-01, 30.137, Jharkhand
1997-04-01, 27.732, Jharkhand
1998-04-01, 29.246, Jharkhand
1999-04-01, 31.837, Jharkhand
2000-04-01, 30.516, Jharkhand
2001-04-01, 29.813, Jharkhand
2002-04-01, 30.267, Jharkhand
2003-04-01, 30.722, Jharkhand
2004-04-01, 29.927, Jharkhand
2005-04-01, 30.054, Jharkhand
2006-04-01, 30.322, Jharkhand
2007-04-01, 30.213, Jharkhand
2008-04-01, 30.138, Jharkhand
2009-04-01, 31.122, Jharkhand
2010-04-01, 32.456, Jharkhand
2011-04-01, 28.813, Jharkhand
2012-04-01, 30.337, Jharkhand
2013-04-01, 29.741, Jharkhand
1980-04-01, 30.13, Karnataka
1981-04-01, 30.088, Karnataka
1982-04-01, 29.638, Karnataka
1983-04-01, 30.113, Karnataka
1984-04-01, 29.594, Karnataka
1985-04-01, 30.094, Karnataka
1986-04-01, 30.522, Karnataka
1987-04-01, 30.46, Karnataka
1988-04-01, 29.666, Karnataka
1989-04-01, 29.791, Karnataka
1990-04-01, 30.191, Karnataka
1991-04-01, 29.748, Karnataka
1992-04-01, 30.048, Karnataka
1993-04-01, 29.979, Karnataka
1994-04-01, 29.199, Karnataka
1995-04-01, 30.086, Karnataka
1996-04-01, 29.752, Karnataka
1997-04-01, 28.865, Karnataka
1998-04-01, 30.931, Karnataka
1999-04-01, 29.88, Karnataka
2000-04-01, 30.293, Karnataka
2001-04-01, 29.56, Karnataka
2002-04-01, 30.596, Karnataka
2003-04-01, 30.229, Karnataka
2004-04-01, 30.126, Karnataka
2005-04-01, 29.491, Karnataka
2006-04-01, 29.853, Karnataka
2007-04-01, 30.068, Karnataka
2008-04-01, 29.356, Karnataka
2009-04-01, 30.423, Karnataka
2010-04-01, 30.774, Karnataka
2011-04-01, 28.973, Karnataka
2012-04-01, 29.813, Karnataka
2013-04-01, 30.325, Karnataka
1980-04-01, 29.059, Kerala
1981-04-01, 29.133, Kerala
1982-04-01, 29.053, Kerala
1983-04-01, 29.455, Kerala
1984-04-01, 28.312, Kerala
1985-04-01, 29.156, Kerala
1986-04-01, 29.389, Kerala
1987-04-01, 29.478, Kerala
1988-04-01, 28.623, Kerala
1989-04-01, 28.903, Kerala
1990-04-01, 29.411, Kerala
1991-04-01, 29.141, Kerala
1992-04-01, 29.237, Kerala
1993-04-01, 29.036, Kerala
1994-04-01, 28.387, Kerala
1995-04-01, 28.862, Kerala
1996-04-01, 28.831, Kerala
1997-04-01, 28.785, Kerala
1998-04-01, 30.336, Kerala
1999-04-01, 28.565, Kerala
2000-04-01, 28.956, Kerala
2001-04-01, 28.456, Kerala
2002-04-01, 29.365, Kerala
2003-04-01, 29.112, Kerala
2004-04-01, 29.219, Kerala
2005-04-01, 28.505, Kerala
2006-04-01, 29.111, Kerala
2007-04-01, 29.152, Kerala
2008-04-01, 28.43, Kerala
2009-04-01, 29.326, Kerala
2010-04-01, 29.578, Kerala
2011-04-01, 28.435, Kerala
2012-04-01, 28.967, Kerala
2013-04-01, 29.982, Kerala
1980-04-01, 32.094, Madhya Pradesh
1981-04-01, 31.127, Madhya Pradesh
1982-04-01, 29.855, Madhya Pradesh
1983-04-01, 28.806, Madhya Pradesh
1984-04-01, 30.949, Madhya Pradesh
1985-04-01, 30.992, Madhya Pradesh
1986-04-01, 30.799, Madhya Pradesh
1987-04-01, 30.993, Madhya Pradesh
1988-04-01, 31.503, Madhya Pradesh
1989-04-01, 30.091, Madhya Pradesh
1990-04-01, 30.675, Madhya Pradesh
1991-04-01, 29.912, Madhya Pradesh
1992-04-01, 30.65, Madhya Pradesh
1993-04-01, 30.482, Madhya Pradesh
1994-04-01, 29.513, Madhya Pradesh
1995-04-01, 30.055, Madhya Pradesh
1996-04-01, 30.307, Madhya Pradesh
1997-04-01, 28.875, Madhya Pradesh
1998-04-01, 31.147, Madhya Pradesh
1999-04-01, 32.183, Madhya Pradesh
2000-04-01, 32.271, Madhya Pradesh
2001-04-01, 30.133, Madhya Pradesh
2002-04-01, 31.809, Madhya Pradesh
2003-04-01, 31.751, Madhya Pradesh
2004-04-01, 32.111, Madhya Pradesh
2005-04-01, 30.352, Madhya Pradesh
2006-04-01, 30.958, Madhya Pradesh
2007-04-01, 31.71, Madhya Pradesh
2008-04-01, 30.613, Madhya Pradesh
2009-04-01, 31.223, Madhya Pradesh
2010-04-01, 32.888, Madhya Pradesh
2011-04-01, 30.079, Madhya Pradesh
2012-04-01, 31.196, Madhya Pradesh
2013-04-01, 30.344, Madhya Pradesh
1980-04-01, 31.86, Maharashtra
1981-04-01, 31.113, Maharashtra
1982-04-01, 30.237, Maharashtra
1983-04-01, 30.067, Maharashtra
1984-04-01, 31.224, Maharashtra
1985-04-01, 31.035, Maharashtra
1986-04-01, 31.326, Maharashtra
1987-04-01, 31.21, Maharashtra
1988-04-01, 31.217, Maharashtra
1989-04-01, 30.489, Maharashtra
1990-04-01, 30.672, Maharashtra
1991-04-01, 30.523, Maharashtra
1992-04-01, 30.738, Maharashtra
1993-04-01, 30.77, Maharashtra
1994-04-01, 29.919, Maharashtra
1995-04-01, 30.483, Maharashtra
1996-04-01, 30.677, Maharashtra
1997-04-01, 29.203, Maharashtra
1998-04-01, 31.619, Maharashtra
1999-04-01, 31.775, Maharashtra
2000-04-01, 31.843, Maharashtra
2001-04-01, 30.7, Maharashtra
2002-04-01, 31.888, Maharashtra
2003-04-01, 31.441, Maharashtra
2004-04-01, 31.591, Maharashtra
2005-04-01, 30.839, Maharashtra
2006-04-01, 30.805, Maharashtra
2007-04-01, 31.513, Maharashtra
2008-04-01, 30.807, Maharashtra
2009-04-01, 31.906, Maharashtra
2010-04-01, 32.474, Maharashtra
2011-04-01, 30.213, Maharashtra
2012-04-01, 31.311, Maharashtra
2013-04-01, 30.704, Maharashtra
1980-04-01, 24.27, Manipur
1981-04-01, 21.83, Manipur
1982-04-01, 21.996, Manipur
1983-04-01, 22.129, Manipur
1984-04-01, 23.526, Manipur
1985-04-01, 23.188, Manipur
1986-04-01, 22.28, Manipur
1987-04-01, 22.524, Manipur
1988-04-01, 23.574, Manipur
1989-04-01, 23.122, Manipur
1990-04-01, 21.789, Manipur
1991-04-01, 22.611, Manipur
1992-04-01, 23.844, Manipur
1993-04-01, 22.486, Manipur
1994-04-01, 22.986, Manipur
1995-04-01, 23.994, Manipur
1996-04-01, 23.483, Manipur
1997-04-01, 21.332, Manipur
1998-04-01, 23.086, Manipur
1999-04-01, 24.955, Manipur
2000-04-01, 23.492, Manipur
2001-04-01, 23.948, Manipur
2002-04-01, 22.901, Manipur
2003-04-01, 23.554, Manipur
2004-04-01, 21.478, Manipur
2005-04-01, 23.24, Manipur
2006-04-01, 23.378, Manipur
2007-04-01, 23.104, Manipur
2008-04-01, 24.18, Manipur
2009-04-01, 24.225, Manipur
2010-04-01, 23.513, Manipur
2011-04-01, 23.361, Manipur
2012-04-01, 22.643, Manipur
2013-04-01, 23.729, Manipur
1980-04-01, 26.367, Meghalaya
1981-04-01, 23.926, Meghalaya
1982-04-01, 24.33, Meghalaya
1983-04-01, 24.379, Meghalaya
1984-04-01, 26.006, Meghalaya
1985-04-01, 25.678, Meghalaya
1986-04-01, 24.399, Meghalaya
1987-04-01, 25.092, Meghalaya
1988-04-01, 25.925, Meghalaya
1989-04-01, 25.802, Meghalaya
1990-04-01, 23.868, Meghalaya
1991-04-01, 25.175, Meghalaya
1992-04-01, 26.29, Meghalaya
1993-04-01, 24.515, Meghalaya
1994-04-01, 25.099, Meghalaya
1995-04-01, 26.166, Meghalaya
1996-04-01, 26.024, Meghalaya
1997-04-01, 23.351, Meghalaya
1998-04-01, 25.002, Meghalaya
1999-04-01, 27.291, Meghalaya
2000-04-01, 25.144, Meghalaya
2001-04-01, 25.576, Meghalaya
2002-04-01, 24.615, Meghalaya
2003-04-01, 25.402, Meghalaya
2004-04-01, 24.071, Meghalaya
2005-04-01, 25.19, Meghalaya
2006-04-01, 25.153, Meghalaya
2007-04-01, 25.395, Meghalaya
2008-04-01, 26.068, Meghalaya
2009-04-01, 26.494, Meghalaya
2010-04-01, 26.106, Meghalaya
2011-04-01, 25.276, Meghalaya
2012-04-01, 24.887, Meghalaya
2013-04-01, 25.641, Meghalaya
1980-04-01, 27.785, Mizoram
1981-04-01, 24.961, Mizoram
1982-04-01, 25.65, Mizoram
1983-04-01, 25.859, Mizoram
1984-04-01, 26.719, Mizoram
1985-04-01, 26.711, Mizoram
1986-04-01, 25.904, Mizoram
1987-04-01, 25.895, Mizoram
1988-04-01, 26.933, Mizoram
1989-04-01, 26.684, Mizoram
1990-04-01, 25.467, Mizoram
1991-04-01, 26.125, Mizoram
1992-04-01, 27.438, Mizoram
1993-04-01, 25.755, Mizoram
1994-04-01, 26.2, Mizoram
1995-04-01, 27.502, Mizoram
1996-04-01, 26.517, Mizoram
1997-04-01, 24.388, Mizoram
1998-04-01, 26.166, Mizoram
1999-04-01, 28.167, Mizoram
2000-04-01, 26.823, Mizoram
2001-04-01, 27.589, Mizoram
2002-04-01, 26.437, Mizoram
2003-04-01, 26.817, Mizoram
2004-04-01, 25.127, Mizoram
2005-04-01, 26.682, Mizoram
2006-04-01, 26.847, Mizoram
2007-04-01, 26.565, Mizoram
2008-04-01, 27.6, Mizoram
2009-04-01, 27.583, Mizoram
2010-04-01, 27.352, Mizoram
2011-04-01, 26.262, Mizoram
2012-04-01, 26.182, Mizoram
2013-04-01, 26.919, Mizoram
1980-04-01, 23.481, Nagaland
1981-04-01, 21.833, Nagaland
1982-04-01, 21.654, Nagaland
1983-04-01, 21.468, Nagaland
1984-04-01, 23.108, Nagaland
1985-04-01, 22.817, Nagaland
1986-04-01, 21.832, Nagaland
1987-04-01, 22.211, Nagaland
1988-04-01, 23.03, Nagaland
1989-04-01, 22.53, Nagaland
1990-04-01, 21.264, Nagaland
1991-04-01, 22.316, Nagaland
1992-04-01, 23.087, Nagaland
1993-04-01, 22.384, Nagaland
1994-04-01, 22.82, Nagaland
1995-04-01, 23.381, Nagaland
1996-04-01, 23.216, Nagaland
1997-04-01, 21.297, Nagaland
1998-04-01, 22.963, Nagaland
1999-04-01, 24.73, Nagaland
2000-04-01, 22.836, Nagaland
2001-04-01, 23.116, Nagaland
2002-04-01, 22.562, Nagaland
2003-04-01, 23.213, Nagaland
2004-04-01, 21.607, Nagaland
2005-04-01, 22.795, Nagaland
2006-04-01, 22.793, Nagaland
2007-04-01, 22.786, Nagaland
2008-04-01, 23.432, Nagaland
2009-04-01, 23.866, Nagaland
2010-04-01, 22.87, Nagaland
2011-04-01, 23.227, Nagaland
2012-04-01, 22.421, Nagaland
2013-04-01, 23.271, Nagaland
1980-04-01, 31.558, Orissa
1981-04-01, 30.016, Orissa
1982-04-01, 30.248, Orissa
1983-04-01, 30.054, Orissa
1984-04-01, 30.546, Orissa
1985-04-01, 31.252, Orissa
1986-04-01, 30.164, Orissa
1987-04-01, 30.317, Orissa
1988-04-01, 30.164, Orissa
1989-04-01, 30.772, Orissa
1990-04-01, 29.636, Orissa
1991-04-01, 30.504, Orissa
1992-04-01, 30.31, Orissa
1993-04-01, 29.828, Orissa
1994-04-01, 29.905, Orissa
1995-04-01, 30.37, Orissa
1996-04-01, 30.226, Orissa
1997-04-01, 28.211, Orissa
1998-04-01, 30.032, Orissa
1999-04-01, 31.863, Orissa
2000-04-01, 31.094, Orissa
2001-04-01, 30.064, Orissa
2002-04-01, 30.988, Orissa
2003-04-01, 30.849, Orissa
2004-04-01, 30.325, Orissa
2005-04-01, 30.449, Orissa
2006-04-01, 30.273, Orissa
2007-04-01, 30.486, Orissa
2008-04-01, 30.15, Orissa
2009-04-01, 31.382, Orissa
2010-04-01, 32.237, Orissa
2011-04-01, 29.168, Orissa
2012-04-01, 30.694, Orissa
2013-04-01, 30.554, Orissa
1980-04-01, 27.888, Punjab
1981-04-01, 26.95, Punjab
1982-04-01, 24.888, Punjab
1983-04-01, 23.035, Punjab
1984-04-01, 26.316, Punjab
1985-04-01, 26.656, Punjab
1986-04-01, 25.809, Punjab
1987-04-01, 26.923, Punjab
1988-04-01, 27.975, Punjab
1989-04-01, 25.026, Punjab
1990-04-01, 25.981, Punjab
1991-04-01, 24.62, Punjab
1992-04-01, 25.631, Punjab
1993-04-01, 26.35, Punjab
1994-04-01, 25.271, Punjab
1995-04-01, 25.103, Punjab
1996-04-01, 26.843, Punjab
1997-04-01, 24.823, Punjab
1998-04-01, 27.083, Punjab
1999-04-01, 28.836, Punjab
2000-04-01, 28.45, Punjab
2001-04-01, 26.435, Punjab
2002-04-01, 28.188, Punjab
2003-04-01, 27.786, Punjab
2004-04-01, 28.87, Punjab
2005-04-01, 26.517, Punjab
2006-04-01, 26.256, Punjab
2007-04-01, 29.152, Punjab
2008-04-01, 26.749, Punjab
2009-04-01, 27.232, Punjab
2010-04-01, 30.09, Punjab
2011-04-01, 25.965, Punjab
2012-04-01, 26.397, Punjab
2013-04-01, 26.897, Punjab
1980-04-01, 31.719, Rajasthan
1981-04-01, 30.721, Rajasthan
1982-04-01, 28.885, Rajasthan
1983-04-01, 27.016, Rajasthan
1984-04-01, 30.506, Rajasthan
1985-04-01, 30.115, Rajasthan
1986-04-01, 30.324, Rajasthan
1987-04-01, 30.503, Rajasthan
1988-04-01, 31.502, Rajasthan
1989-04-01, 29.047, Rajasthan
1990-04-01, 30.067, Rajasthan
1991-04-01, 28.976, Rajasthan
1992-04-01, 28.791, Rajasthan
1993-04-01, 29.968, Rajasthan
1994-04-01, 29.083, Rajasthan
1995-04-01, 29.199, Rajasthan
1996-04-01, 30.062, Rajasthan
1997-04-01, 28.264, Rajasthan
1998-04-01, 31.065, Rajasthan
1999-04-01, 31.616, Rajasthan
2000-04-01, 32.155, Rajasthan
2001-04-01, 29.907, Rajasthan
2002-04-01, 31.683, Rajasthan
2003-04-01, 31.274, Rajasthan
2004-04-01, 32.293, Rajasthan
2005-04-01, 29.562, Rajasthan
2006-04-01, 29.847, Rajasthan
2007-04-01, 32.031, Rajasthan
2008-04-01, 30.107, Rajasthan
2009-04-01, 30.609, Rajasthan
2010-04-01, 33.108, Rajasthan
2011-04-01, 29.801, Rajasthan
2012-04-01, 30.144, Rajasthan
2013-04-01, 30.011, Rajasthan
1980-04-01, 4.867, Sikkim
1981-04-01, 3.015, Sikkim
1982-04-01, 3.192, Sikkim
1983-04-01, 1.96, Sikkim
1984-04-01, 4.269, Sikkim
1985-04-01, 4.916, Sikkim
1986-04-01, 2.935, Sikkim
1987-04-01, 3.365, Sikkim
1988-04-01, 4.214, Sikkim
1989-04-01, 3.806, Sikkim
1990-04-01, 2.947, Sikkim
1991-04-01, 3.664, Sikkim
1992-04-01, 4.241, Sikkim
1993-04-01, 2.968, Sikkim
1994-04-01, 3.315, Sikkim
1995-04-01, 3.643, Sikkim
1996-04-01, 3.958, Sikkim
1997-04-01, 1.712, Sikkim
1998-04-01, 3.638, Sikkim
1999-04-01, 6.284, Sikkim
2000-04-01, 3.921, Sikkim
2001-04-01, 3.822, Sikkim
2002-04-01, 3.898, Sikkim
2003-04-01, 4.511, Sikkim
2004-04-01, 3.974, Sikkim
2005-04-01, 3.938, Sikkim
2006-04-01, 3.458, Sikkim
2007-04-01, 4.556, Sikkim
2008-04-01, 4.718, Sikkim
2009-04-01, 5.508, Sikkim
2010-04-01, 6.023, Sikkim
2011-04-01, 3.302, Sikkim
2012-04-01, 4.068, Sikkim
2013-04-01, 3.721, Sikkim
1980-04-01, 29.513, Tamil Nadu
1981-04-01, 29.654, Tamil Nadu
1982-04-01, 29.501, Tamil Nadu
1983-04-01, 30.025, Tamil Nadu
1984-04-01, 28.729, Tamil Nadu
1985-04-01, 29.783, Tamil Nadu
1986-04-01, 29.671, Tamil Nadu
1987-04-01, 29.867, Tamil Nadu
1988-04-01, 29.061, Tamil Nadu
1989-04-01, 29.435, Tamil Nadu
1990-04-01, 29.933, Tamil Nadu
1991-04-01, 29.684, Tamil Nadu
1992-04-01, 29.629, Tamil Nadu
1993-04-01, 29.404, Tamil Nadu
1994-04-01, 28.921, Tamil Nadu
1995-04-01, 29.26, Tamil Nadu
1996-04-01, 29.138, Tamil Nadu
1997-04-01, 28.753, Tamil Nadu
1998-04-01, 30.529, Tamil Nadu
1999-04-01, 29.107, Tamil Nadu
2000-04-01, 29.561, Tamil Nadu
2001-04-01, 28.685, Tamil Nadu
2002-04-01, 29.839, Tamil Nadu
2003-04-01, 29.581, Tamil Nadu
2004-04-01, 29.835, Tamil Nadu
2005-04-01, 28.78, Tamil Nadu
2006-04-01, 29.538, Tamil Nadu
2007-04-01, 29.344, Tamil Nadu
2008-04-01, 28.869, Tamil Nadu
2009-04-01, 29.561, Tamil Nadu
2010-04-01, 30.36, Tamil Nadu
2011-04-01, 28.778, Tamil Nadu
2012-04-01, 29.662, Tamil Nadu
2013-04-01, 30.712, Tamil Nadu
1980-04-01, 28.971, Tripura
1981-04-01, 25.836, Tripura
1982-04-01, 26.817, Tripura
1983-04-01, 27.005, Tripura
1984-04-01, 27.947, Tripura
1985-04-01, 27.978, Tripura
1986-04-01, 26.983, Tripura
1987-04-01, 27.226, Tripura
1988-04-01, 28.27, Tripura
1989-04-01, 28.369, Tripura
1990-04-01, 26.595, Tripura
1991-04-01, 27.677, Tripura
1992-04-01, 28.709, Tripura
1993-04-01, 26.969, Tripura
1994-04-01, 27.344, Tripura
1995-04-01, 28.646, Tripura
1996-04-01, 27.884, Tripura
1997-04-01, 25.442, Tripura
1998-04-01, 27.036, Tripura
1999-04-01, 29.457, Tripura
2000-04-01, 27.616, Tripura
2001-04-01, 28.346, Tripura
2002-04-01, 27.217, Tripura
2003-04-01, 27.865, Tripura
2004-04-01, 26.506, Tripura
2005-04-01, 27.768, Tripura
2006-04-01, 27.901, Tripura
2007-04-01, 27.659, Tripura
2008-04-01, 28.556, Tripura
2009-04-01, 28.884, Tripura
2010-04-01, 28.74, Tripura
2011-04-01, 27.416, Tripura
2012-04-01, 27.203, Tripura
2013-04-01, 27.957, Tripura
1980-04-01, 30.772, Uttar Pradesh
1981-04-01, 29.269, Uttar Pradesh
1982-04-01, 28.182, Uttar Pradesh
1983-04-01, 26.604, Uttar Pradesh
1984-04-01, 29.78, Uttar Pradesh
1985-04-01, 30.038, Uttar Pradesh
1986-04-01, 28.894, Uttar Pradesh
1987-04-01, 29.678, Uttar Pradesh
1988-04-01, 30.248, Uttar Pradesh
1989-04-01, 28.667, Uttar Pradesh
1990-04-01, 28.938, Uttar Pradesh
1991-04-01, 28.363, Uttar Pradesh
1992-04-01, 29.515, Uttar Pradesh
1993-04-01, 28.687, Uttar Pradesh
1994-04-01, 28.288, Uttar Pradesh
1995-04-01, 29.102, Uttar Pradesh
1996-04-01, 29.312, Uttar Pradesh
1997-04-01, 27.622, Uttar Pradesh
1998-04-01, 29.23, Uttar Pradesh
1999-04-01, 31.415, Uttar Pradesh
2000-04-01, 30.452, Uttar Pradesh
2001-04-01, 29.006, Uttar Pradesh
2002-04-01, 30.196, Uttar Pradesh
2003-04-01, 30.377, Uttar Pradesh
2004-04-01, 30.596, Uttar Pradesh
2005-04-01, 29.316, Uttar Pradesh
2006-04-01, 29.823, Uttar Pradesh
2007-04-01, 30.518, Uttar Pradesh
2008-04-01, 29.259, Uttar Pradesh
2009-04-01, 30.077, Uttar Pradesh
2010-04-01, 32.041, Uttar Pradesh
2011-04-01, 28.735, Uttar Pradesh
2012-04-01, 29.479, Uttar Pradesh
2013-04-01, 28.905, Uttar Pradesh
1980-04-01, 18.554, Uttaranchal
1981-04-01, 17.292, Uttaranchal
1982-04-01, 15.78, Uttaranchal
1983-04-01, 14.052, Uttaranchal
1984-04-01, 17.362, Uttaranchal
1985-04-01, 17.915, Uttaranchal
1986-04-01, 16.528, Uttaranchal
1987-04-01, 17.864, Uttaranchal
1988-04-01, 18.51, Uttaranchal
1989-04-01, 16.289, Uttaranchal
1990-04-01, 16.432, Uttaranchal
1991-04-01, 15.879, Uttaranchal
1992-04-01, 17.086, Uttaranchal
1993-04-01, 16.594, Uttaranchal
1994-04-01, 16.031, Uttaranchal
1995-04-01, 16.562, Uttaranchal
1996-04-01, 17.28, Uttaranchal
1997-04-01, 15.779, Uttaranchal
1998-04-01, 17.394, Uttaranchal
1999-04-01, 20.062, Uttaranchal
2000-04-01, 18.537, Uttaranchal
2001-04-01, 17.006, Uttaranchal
2002-04-01, 18.191, Uttaranchal
2003-04-01, 18.223, Uttaranchal
2004-04-01, 19.225, Uttaranchal
2005-04-01, 17.231, Uttaranchal
2006-04-01, 17.908, Uttaranchal
2007-04-01, 19.185, Uttaranchal
2008-04-01, 16.859, Uttaranchal
2009-04-01, 18.358, Uttaranchal
2010-04-01, 20.234, Uttaranchal
2011-04-01, 16.718, Uttaranchal
2012-04-01, 17.078, Uttaranchal
2013-04-01, 17.303, Uttaranchal
1980-04-01, 29.819, West Bengal
1981-04-01, 27.015, West Bengal
1982-04-01, 27.954, West Bengal
1983-04-01, 27.705, West Bengal
1984-04-01, 29.195, West Bengal
1985-04-01, 29.501, West Bengal
1986-04-01, 28.109, West Bengal
1987-04-01, 28.41, West Bengal
1988-04-01, 29, West Bengal
1989-04-01, 29.395, West Bengal
1990-04-01, 27.719, West Bengal
1991-04-01, 28.638, West Bengal
1992-04-01, 29.483, West Bengal
1993-04-01, 27.641, West Bengal
1994-04-01, 28.156, West Bengal
1995-04-01, 29.469, West Bengal
1996-04-01, 28.847, West Bengal
1997-04-01, 26.147, West Bengal
1998-04-01, 27.896, West Bengal
1999-04-01, 30.22, West Bengal
2000-04-01, 28.578, West Bengal
2001-04-01, 28.589, West Bengal
2002-04-01, 28.381, West Bengal
2003-04-01, 29.015, West Bengal
2004-04-01, 28.078, West Bengal
2005-04-01, 28.567, West Bengal
2006-04-01, 28.649, West Bengal
2007-04-01, 28.869, West Bengal
2008-04-01, 28.907, West Bengal
2009-04-01, 30.006, West Bengal
2010-04-01, 30.612, West Bengal
2011-04-01, 27.695, West Bengal
2012-04-01, 28.723, West Bengal
2013-04-01, 28.707, West Bengal */

-- To get the temperature received by 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra' in the month of April from 1980 to 2013  
SELECT *
FROM temperature_state_wise
WHERE EXTRACT(MONTH FROM date) = 04
  AND EXTRACT(DAY FROM date) = 01
  AND EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
  AND State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra');
  /*# date, AverageTemperature, State
1980-04-01, 23.856, Assam
1981-04-01, 22.055, Assam
1982-04-01, 22.042, Assam
1983-04-01, 21.776, Assam
1984-04-01, 23.549, Assam
1985-04-01, 23.348, Assam
1986-04-01, 22.078, Assam
1987-04-01, 22.623, Assam
1988-04-01, 23.395, Assam
1989-04-01, 22.999, Assam
1990-04-01, 21.455, Assam
1991-04-01, 22.745, Assam
1992-04-01, 23.518, Assam
1993-04-01, 22.463, Assam
1994-04-01, 22.941, Assam
1995-04-01, 23.51, Assam
1996-04-01, 23.707, Assam
1997-04-01, 21.453, Assam
1998-04-01, 23.089, Assam
1999-04-01, 25.129, Assam
2000-04-01, 22.97, Assam
2001-04-01, 23.181, Assam
2002-04-01, 22.554, Assam
2003-04-01, 23.257, Assam
2004-04-01, 21.973, Assam
2005-04-01, 22.894, Assam
2006-04-01, 22.831, Assam
2007-04-01, 23.148, Assam
2008-04-01, 23.636, Assam
2009-04-01, 24.191, Assam
2010-04-01, 23.468, Assam
2011-04-01, 23.341, Assam
2012-04-01, 22.601, Assam
2013-04-01, 23.407, Assam
1980-04-01, 30.976, Delhi
1981-04-01, 29.892, Delhi
1982-04-01, 27.876, Delhi
1983-04-01, 26.043, Delhi
1984-04-01, 29.69, Delhi
1985-04-01, 29.794, Delhi
1986-04-01, 29.026, Delhi
1987-04-01, 30.067, Delhi
1988-04-01, 30.658, Delhi
1989-04-01, 28.167, Delhi
1990-04-01, 28.983, Delhi
1991-04-01, 28.149, Delhi
1992-04-01, 28.766, Delhi
1993-04-01, 29.062, Delhi
1994-04-01, 28.114, Delhi
1995-04-01, 28.74, Delhi
1996-04-01, 29.519, Delhi
1997-04-01, 27.34, Delhi
1998-04-01, 29.802, Delhi
1999-04-01, 31.384, Delhi
2000-04-01, 31.266, Delhi
2001-04-01, 29.155, Delhi
2002-04-01, 30.945, Delhi
2003-04-01, 30.752, Delhi
2004-04-01, 31.433, Delhi
2005-04-01, 29.322, Delhi
2006-04-01, 30.364, Delhi
2007-04-01, 31.331, Delhi
2008-04-01, 29.609, Delhi
2009-04-01, 30.182, Delhi
2010-04-01, 32.809, Delhi
2011-04-01, 28.956, Delhi
2012-04-01, 29.341, Delhi
2013-04-01, 29.304, Delhi
1980-04-01, 29.059, Kerala
1981-04-01, 29.133, Kerala
1982-04-01, 29.053, Kerala
1983-04-01, 29.455, Kerala
1984-04-01, 28.312, Kerala
1985-04-01, 29.156, Kerala
1986-04-01, 29.389, Kerala
1987-04-01, 29.478, Kerala
1988-04-01, 28.623, Kerala
1989-04-01, 28.903, Kerala
1990-04-01, 29.411, Kerala
1991-04-01, 29.141, Kerala
1992-04-01, 29.237, Kerala
1993-04-01, 29.036, Kerala
1994-04-01, 28.387, Kerala
1995-04-01, 28.862, Kerala
1996-04-01, 28.831, Kerala
1997-04-01, 28.785, Kerala
1998-04-01, 30.336, Kerala
1999-04-01, 28.565, Kerala
2000-04-01, 28.956, Kerala
2001-04-01, 28.456, Kerala
2002-04-01, 29.365, Kerala
2003-04-01, 29.112, Kerala
2004-04-01, 29.219, Kerala
2005-04-01, 28.505, Kerala
2006-04-01, 29.111, Kerala
2007-04-01, 29.152, Kerala
2008-04-01, 28.43, Kerala
2009-04-01, 29.326, Kerala
2010-04-01, 29.578, Kerala
2011-04-01, 28.435, Kerala
2012-04-01, 28.967, Kerala
2013-04-01, 29.982, Kerala
1980-04-01, 31.86, Maharashtra
1981-04-01, 31.113, Maharashtra
1982-04-01, 30.237, Maharashtra
1983-04-01, 30.067, Maharashtra
1984-04-01, 31.224, Maharashtra
1985-04-01, 31.035, Maharashtra
1986-04-01, 31.326, Maharashtra
1987-04-01, 31.21, Maharashtra
1988-04-01, 31.217, Maharashtra
1989-04-01, 30.489, Maharashtra
1990-04-01, 30.672, Maharashtra
1991-04-01, 30.523, Maharashtra
1992-04-01, 30.738, Maharashtra
1993-04-01, 30.77, Maharashtra
1994-04-01, 29.919, Maharashtra
1995-04-01, 30.483, Maharashtra
1996-04-01, 30.677, Maharashtra
1997-04-01, 29.203, Maharashtra
1998-04-01, 31.619, Maharashtra
1999-04-01, 31.775, Maharashtra
2000-04-01, 31.843, Maharashtra
2001-04-01, 30.7, Maharashtra
2002-04-01, 31.888, Maharashtra
2003-04-01, 31.441, Maharashtra
2004-04-01, 31.591, Maharashtra
2005-04-01, 30.839, Maharashtra
2006-04-01, 30.805, Maharashtra
2007-04-01, 31.513, Maharashtra
2008-04-01, 30.807, Maharashtra
2009-04-01, 31.906, Maharashtra
2010-04-01, 32.474, Maharashtra
2011-04-01, 30.213, Maharashtra
2012-04-01, 31.311, Maharashtra
2013-04-01, 30.704, Maharashtra
1980-04-01, 29.513, Tamil Nadu
1981-04-01, 29.654, Tamil Nadu
1982-04-01, 29.501, Tamil Nadu
1983-04-01, 30.025, Tamil Nadu
1984-04-01, 28.729, Tamil Nadu
1985-04-01, 29.783, Tamil Nadu
1986-04-01, 29.671, Tamil Nadu
1987-04-01, 29.867, Tamil Nadu
1988-04-01, 29.061, Tamil Nadu
1989-04-01, 29.435, Tamil Nadu
1990-04-01, 29.933, Tamil Nadu
1991-04-01, 29.684, Tamil Nadu
1992-04-01, 29.629, Tamil Nadu
1993-04-01, 29.404, Tamil Nadu
1994-04-01, 28.921, Tamil Nadu
1995-04-01, 29.26, Tamil Nadu
1996-04-01, 29.138, Tamil Nadu
1997-04-01, 28.753, Tamil Nadu
1998-04-01, 30.529, Tamil Nadu
1999-04-01, 29.107, Tamil Nadu
2000-04-01, 29.561, Tamil Nadu
2001-04-01, 28.685, Tamil Nadu
2002-04-01, 29.839, Tamil Nadu
2003-04-01, 29.581, Tamil Nadu
2004-04-01, 29.835, Tamil Nadu
2005-04-01, 28.78, Tamil Nadu
2006-04-01, 29.538, Tamil Nadu
2007-04-01, 29.344, Tamil Nadu
2008-04-01, 28.869, Tamil Nadu
2009-04-01, 29.561, Tamil Nadu
2010-04-01, 30.36, Tamil Nadu
2011-04-01, 28.778, Tamil Nadu
2012-04-01, 29.662, Tamil Nadu
2013-04-01, 30.712, Tamil Nadu
1980-04-01, 30.772, Uttar Pradesh
1981-04-01, 29.269, Uttar Pradesh
1982-04-01, 28.182, Uttar Pradesh
1983-04-01, 26.604, Uttar Pradesh
1984-04-01, 29.78, Uttar Pradesh
1985-04-01, 30.038, Uttar Pradesh
1986-04-01, 28.894, Uttar Pradesh
1987-04-01, 29.678, Uttar Pradesh
1988-04-01, 30.248, Uttar Pradesh
1989-04-01, 28.667, Uttar Pradesh
1990-04-01, 28.938, Uttar Pradesh
1991-04-01, 28.363, Uttar Pradesh
1992-04-01, 29.515, Uttar Pradesh
1993-04-01, 28.687, Uttar Pradesh
1994-04-01, 28.288, Uttar Pradesh
1995-04-01, 29.102, Uttar Pradesh
1996-04-01, 29.312, Uttar Pradesh
1997-04-01, 27.622, Uttar Pradesh
1998-04-01, 29.23, Uttar Pradesh
1999-04-01, 31.415, Uttar Pradesh
2000-04-01, 30.452, Uttar Pradesh
2001-04-01, 29.006, Uttar Pradesh
2002-04-01, 30.196, Uttar Pradesh
2003-04-01, 30.377, Uttar Pradesh
2004-04-01, 30.596, Uttar Pradesh
2005-04-01, 29.316, Uttar Pradesh
2006-04-01, 29.823, Uttar Pradesh
2007-04-01, 30.518, Uttar Pradesh
2008-04-01, 29.259, Uttar Pradesh
2009-04-01, 30.077, Uttar Pradesh
2010-04-01, 32.041, Uttar Pradesh
2011-04-01, 28.735, Uttar Pradesh
2012-04-01, 29.479, Uttar Pradesh
2013-04-01, 28.905, Uttar Pradesh*/

-- To get the minimum temperature received in the month of April from the year 1980 to 2013 among the states 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra'
SELECT *
FROM temperature_state_wise
WHERE EXTRACT(MONTH FROM date) = 04
  AND EXTRACT(DAY FROM date) = 01
  AND EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
  AND State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra')
  ORDER BY AverageTemperature
  LIMIT 2;
  -- # date, AverageTemperature, State
-- 1997-04-01, 21.453, Assam

-- To get the maximum temperature received in the month of April from the year 1980 to 2013 among the states 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra'
SELECT *
FROM temperature_state_wise
WHERE EXTRACT(MONTH FROM date) = 04
  AND EXTRACT(DAY FROM date) = 01
  AND EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
  AND State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra')
  ORDER BY AverageTemperature DESC
  LIMIT 2;
-- # date, AverageTemperature, State
-- 2010-04-01, 32.809, Delhi

-- To get the average temperature received from the year 1980 to 2013 by the states 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra'
SELECT avg(AverageTemperature), State
FROM temperature_state_wise
WHERE EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
AND State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra')
Group By State;
/*
# avg(AverageTemperature), State
22.368242574257444, Assam
25.848871287128702, Delhi
26.955455445544544, Kerala
26.53902227722776, Maharashtra
27.304475247524795, Tamil Nadu
25.270628712871286, Uttar Pradesh
*/

-- To get the average temperature received in each month from the year 1980 to 2013 by the states 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra'
SELECT EXTRACT(MONTH FROM date) AS month, Round(AVG(AverageTemperature), 3), State
FROM temperature_state_wise
WHERE EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
AND State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra')
GROUP BY State, EXTRACT(MONTH FROM date) 
ORDER BY State, month;
/*
# month, Round(AVG(AverageTemperature), 3), State
1, 15.075, Assam
2, 17.547, Assam
3, 21.015, Assam
4, 22.976, Assam
5, 24.847, Assam
6, 26.51, Assam
7, 26.816, Assam
8, 26.948, Assam
9, 26.165, Assam
10, 23.933, Assam
11, 20.149, Assam
12, 16.353, Assam
1, 14.714, Delhi
2, 18.068, Delhi
3, 23.644, Delhi
4, 29.612, Delhi
5, 33.835, Delhi
6, 34.197, Delhi
7, 31.529, Delhi
8, 30.318, Delhi
9, 29.722, Delhi
10, 26.593, Delhi
11, 21.361, Delhi
12, 16.317, Delhi
1, 26.366, Kerala
2, 27.34, Kerala
3, 28.702, Kerala
4, 29.051, Kerala
5, 28.601, Kerala
6, 26.389, Kerala
7, 25.688, Kerala
8, 25.797, Kerala
9, 26.285, Kerala
10, 26.391, Kerala
11, 26.54, Kerala
12, 26.246, Kerala
1, 21.655, Maharashtra
2, 24.086, Maharashtra
3, 27.889, Maharashtra
4, 31.006, Maharashtra
5, 32.661, Maharashtra
6, 29.678, Maharashtra
7, 26.859, Maharashtra
8, 26.171, Maharashtra
9, 26.705, Maharashtra
10, 26.101, Maharashtra
11, 23.857, Maharashtra
12, 21.567, Maharashtra
1, 24.763, Tamil Nadu
2, 26.212, Tamil Nadu
3, 28.213, Tamil Nadu
4, 29.491, Tamil Nadu
5, 30.039, Tamil Nadu
6, 28.771, Tamil Nadu
7, 27.958, Tamil Nadu
8, 27.695, Tamil Nadu
9, 27.559, Tamil Nadu
10, 26.637, Tamil Nadu
11, 25.567, Tamil Nadu
12, 24.605, Tamil Nadu
1, 15.048, Uttar Pradesh
2, 18.466, Uttar Pradesh
3, 23.917, Uttar Pradesh
4, 29.452, Uttar Pradesh
5, 32.823, Uttar Pradesh
6, 32.594, Uttar Pradesh
7, 29.867, Uttar Pradesh
8, 29.087, Uttar Pradesh
9, 28.57, Uttar Pradesh
10, 25.751, Uttar Pradesh
11, 20.958, Uttar Pradesh
12, 16.439, Uttar Pradesh
*/

-- To get the average temperature received in each year from the year 1980 to 2013 by the states 'Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra'
SELECT EXTRACT(YEAR FROM date) AS year, round(AVG(AverageTemperature), 3) AS Average_Temperature, State
FROM temperature_state_wise
WHERE State IN ('Kerala', 'Tamil Nadu', 'Delhi', 'Uttar Pradesh', 'Assam', 'Maharashtra')
  AND EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013
GROUP BY State, EXTRACT(YEAR FROM date)
ORDER BY State, year;

/*
# year, State, Average_Temperature
1980, Assam, 22.321
1981, Assam, 22.297
1982, Assam, 22.104
1983, Assam, 21.894
1984, Assam, 22.267
1985, Assam, 22.355
1986, Assam, 22.154
1987, Assam, 22.487
1988, Assam, 22.745
1989, Assam, 22.271
1990, Assam, 22.228
1991, Assam, 21.978
1992, Assam, 21.797
1993, Assam, 22.006
1994, Assam, 22.414
1995, Assam, 22.437
1996, Assam, 22.438
1997, Assam, 21.742
1998, Assam, 22.645
1999, Assam, 22.971
2000, Assam, 22.002
2001, Assam, 22.427
2002, Assam, 22.297
2003, Assam, 22.293
2004, Assam, 22.168
2005, Assam, 22.511
2006, Assam, 22.804
2007, Assam, 22.511
2008, Assam, 22.429
2009, Assam, 23.075
2010, Assam, 22.704
2011, Assam, 22.481
2012, Assam, 22.235
2013, Assam, 23.367
1980, Delhi, 26.016
1981, Delhi, 25.788
1982, Delhi, 25.176
1983, Delhi, 24.747
1984, Delhi, 25.564
1985, Delhi, 25.865
1986, Delhi, 25.309
1987, Delhi, 26.539
1988, Delhi, 26.106
1989, Delhi, 25.433
1990, Delhi, 25.538
1991, Delhi, 25.739
1992, Delhi, 25.521
1993, Delhi, 25.921
1994, Delhi, 25.869
1995, Delhi, 25.92
1996, Delhi, 25.546
1997, Delhi, 24.708
1998, Delhi, 25.769
1999, Delhi, 26.363
2000, Delhi, 26.048
2001, Delhi, 25.863
2002, Delhi, 26.634
2003, Delhi, 25.721
2004, Delhi, 26.24
2005, Delhi, 25.716
2006, Delhi, 26.366
2007, Delhi, 26.146
2008, Delhi, 25.675
2009, Delhi, 26.554
2010, Delhi, 26.52
2011, Delhi, 25.629
2012, Delhi, 25.889
2013, Delhi, 26.709
1980, Kerala, 26.873
1981, Kerala, 26.622
1982, Kerala, 26.832
1983, Kerala, 27.078
1984, Kerala, 26.56
1985, Kerala, 26.737
1986, Kerala, 26.917
1987, Kerala, 27.32
1988, Kerala, 27.019
1989, Kerala, 26.661
1990, Kerala, 26.797
1991, Kerala, 26.997
1992, Kerala, 26.609
1993, Kerala, 26.705
1994, Kerala, 26.768
1995, Kerala, 26.975
1996, Kerala, 26.871
1997, Kerala, 27.168
1998, Kerala, 27.426
1999, Kerala, 26.758
2000, Kerala, 26.802
2001, Kerala, 26.931
2002, Kerala, 27.137
2003, Kerala, 27.246
2004, Kerala, 26.813
2005, Kerala, 26.994
2006, Kerala, 26.903
2007, Kerala, 26.953
2008, Kerala, 26.864
2009, Kerala, 27.225
2010, Kerala, 27.176
2011, Kerala, 26.976
2012, Kerala, 27.379
2013, Kerala, 27.615
1980, Maharashtra, 26.696
1981, Maharashtra, 26.221
1982, Maharashtra, 26.463
1983, Maharashtra, 26.015
1984, Maharashtra, 26.276
1985, Maharashtra, 26.421
1986, Maharashtra, 26.557
1987, Maharashtra, 26.796
1988, Maharashtra, 26.647
1989, Maharashtra, 26.154
1990, Maharashtra, 25.993
1991, Maharashtra, 26.389
1992, Maharashtra, 26.441
1993, Maharashtra, 26.367
1994, Maharashtra, 26.091
1995, Maharashtra, 26.458
1996, Maharashtra, 26.662
1997, Maharashtra, 26.324
1998, Maharashtra, 26.806
1999, Maharashtra, 26.373
2000, Maharashtra, 26.433
2001, Maharashtra, 26.626
2002, Maharashtra, 26.881
2003, Maharashtra, 26.91
2004, Maharashtra, 26.627
2005, Maharashtra, 26.445
2006, Maharashtra, 26.61
2007, Maharashtra, 26.773
2008, Maharashtra, 26.479
2009, Maharashtra, 27.248
2010, Maharashtra, 27.057
2011, Maharashtra, 26.391
2012, Maharashtra, 26.658
2013, Maharashtra, 27.29
1980, Tamil Nadu, 27.322
1981, Tamil Nadu, 26.967
1982, Tamil Nadu, 27.22
1983, Tamil Nadu, 27.48
1984, Tamil Nadu, 26.858
1985, Tamil Nadu, 27.094
1986, Tamil Nadu, 27.257
1987, Tamil Nadu, 27.603
1988, Tamil Nadu, 27.354
1989, Tamil Nadu, 27.009
1990, Tamil Nadu, 27.169
1991, Tamil Nadu, 27.309
1992, Tamil Nadu, 26.992
1993, Tamil Nadu, 27.015
1994, Tamil Nadu, 27.08
1995, Tamil Nadu, 27.201
1996, Tamil Nadu, 27.13
1997, Tamil Nadu, 27.457
1998, Tamil Nadu, 27.824
1999, Tamil Nadu, 27.102
2000, Tamil Nadu, 27.141
2001, Tamil Nadu, 27.32
2002, Tamil Nadu, 27.506
2003, Tamil Nadu, 27.602
2004, Tamil Nadu, 27.085
2005, Tamil Nadu, 27.313
2006, Tamil Nadu, 27.251
2007, Tamil Nadu, 27.291
2008, Tamil Nadu, 27.179
2009, Tamil Nadu, 27.556
2010, Tamil Nadu, 27.479
2011, Tamil Nadu, 27.26
2012, Tamil Nadu, 27.86
2013, Tamil Nadu, 28.445
1980, Uttar Pradesh, 25.274
1981, Uttar Pradesh, 24.991
1982, Uttar Pradesh, 24.771
1983, Uttar Pradesh, 24.339
1984, Uttar Pradesh, 24.947
1985, Uttar Pradesh, 25.334
1986, Uttar Pradesh, 24.832
1987, Uttar Pradesh, 25.691
1988, Uttar Pradesh, 25.488
1989, Uttar Pradesh, 24.874
1990, Uttar Pradesh, 25.006
1991, Uttar Pradesh, 25.156
1992, Uttar Pradesh, 25.111
1993, Uttar Pradesh, 25.225
1994, Uttar Pradesh, 25.275
1995, Uttar Pradesh, 25.376
1996, Uttar Pradesh, 25.193
1997, Uttar Pradesh, 24.538
1998, Uttar Pradesh, 25.352
1999, Uttar Pradesh, 25.673
2000, Uttar Pradesh, 25.277
2001, Uttar Pradesh, 25.278
2002, Uttar Pradesh, 25.913
2003, Uttar Pradesh, 25.295
2004, Uttar Pradesh, 25.484
2005, Uttar Pradesh, 25.425
2006, Uttar Pradesh, 25.74
2007, Uttar Pradesh, 25.367
2008, Uttar Pradesh, 25.054
2009, Uttar Pradesh, 25.892
2010, Uttar Pradesh, 25.918
2011, Uttar Pradesh, 24.997
2012, Uttar Pradesh, 25.333
2013, Uttar Pradesh, 26.044
*/

-- To get the overall average temperature of India
SELECT AVG(AverageTemperature) AS overall_average_temperature_of_India
FROM temperature_state_wise
WHERE EXTRACT(YEAR FROM date) BETWEEN 1980 AND 2013;
-- # overall_average_temperature_of_India
-- 22.597825708432882
