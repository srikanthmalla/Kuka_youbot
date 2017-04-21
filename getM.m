% get M
function M=getM(pos)
  M = zeros(5,5);
  pos(5) = 0;
  %double c_1 = cos(pos(1));
  c_2 = cos(pos(2));
  c_3 = cos(pos(3));
  c_4 = cos(pos(4));
  c_5 = cos(pos(5));
  %double s_1 = sin(pos(1));
  s_2 = sin(pos(2));
  s_3 = sin(pos(3));
  s_4 = sin(pos(4));
  s_5 = sin(pos(5));
  term_1 = (2259.0*sin(pos(2) - pos(3) + pos(4) + pos(5)))/62500000.0;
  term_2 = (753.0*cos(pos(2) - pos(3) + pos(4) - pos(5)))/1000000000.0;
  term_3 = (3969783.0*c_4);
  term_4 = (2259.0*power(c_5,2))/1000000000.0;
  term_5 = (753.0*c_5);
  term_6 = (27027.0*s_4);
  term_7 = (20331.0*c_5*s_4);
  term_8 = (4557899.0*s_3*s_4);
  term_9 = (4557899.0*c_3*c_4);
  term_10 = (31031.0*c_3*s_4);
  term_11 = (753.0*cos(pos(2) - pos(3) + pos(4) + pos(5)));
  term_12 = (31031.0*c_4*s_3);
  term_13 = (2259.0*cos(pos(2) - pos(3) + pos(4) - 2*pos(5)));
  term_14 = (2259.0*cos(pos(2) - pos(3) + pos(4) + 2*pos(5)));
  term_15 = (2259.0*sin(pos(2) - pos(3) + pos(4) - pos(5)));
  term_16 = (20331.0*sin(pos(2) - pos(3) + pos(5)));
  term_17 = (25433.0*cos(pos(2) - pos(3) + pos(4)));
  term_18 = (23343.0*c_3*c_5*s_4);
  term_19 = (23343.0*c_4*c_5*s_3);
  M(1,1) = (4557899.0*cos(pos(3) - pos(4)))/200000000.0- (753.0*cos(2*pos(2) - 2*pos(3) + 2*pos(4) - pos(5)))/1000000000.0+ (2259.0*cos(2*pos(2) - 2*pos(3) + 2*pos(4) - 2*pos(5)))/8000000000.0+ (2259.0*cos(2*pos(2) - 2*pos(3) + 2*pos(4) + 2*pos(5)))/8000000000.0- (2700357.0*sin(pos(2) - pos(3)))/125000000.0+ (31031.0*sin(pos(3) - pos(4)))/100000000.0+ (20331.0*sin(pos(4) - pos(5)))/400000000.0- (2259.0*sin(2*pos(2) - 2*pos(3) + 2*pos(4) - pos(5)))/62500000.0- (1864633.0*cos(2*pos(2)))/50000000.0- (2259.0*cos(2*pos(5)))/4000000000.0- (31441279.0*cos(2*pos(2) - 2*pos(3) + 2*pos(4)))/4000000000.0+ (30399.0*sin(2*pos(2) - 2*pos(3) + 2*pos(4)))/125000000.0+ (24849.0*cos(pos(2) - pos(3) + pos(4) - pos(5)))/1000000000.0- (23343.0*sin(2*pos(2) - pos(3) + pos(4) + pos(5)))/400000000.0- (20331.0*sin(2*pos(2) - 2*pos(3) + pos(4) + pos(5)))/400000000.0- (2536699.0*cos(2*pos(2) - pos(3)))/50000000.0- (10013911.0*cos(2*pos(2) - 2*pos(3)))/500000000.0- (33033.0*cos(pos(2) - pos(3) + pos(4)))/250000000.0- (4851957.0*sin(pos(2) - pos(3) + pos(4)))/500000000.0- (23343.0*sin(pos(3) - pos(4) + pos(5)))/400000000.0- (753.0*cos(2*pos(2) - 2*pos(3) + 2*pos(4) + pos(5)))/1000000000.0+ (20331.0*sin(pos(4) + pos(5)))/400000000.0- (23343.0*sin(2*pos(2) - pos(3) + pos(4) - pos(5)))/400000000.0- (20331.0*sin(2*pos(2) - 2*pos(3) + pos(4) - pos(5)))/400000000.0- (2259.0*sin(2*pos(2) - 2*pos(3) + 2*pos(4) + pos(5)))/62500000.0+ (2536699.0*c_3)/50000000.0+ term_3/200000000.0- term_5/500000000.0- (4557899.0*cos(2*pos(2) - pos(3) + pos(4)))/200000000.0- (3969783.0*cos(2*pos(2) - 2*pos(3) + pos(4)))/200000000.0- (347127.0*s_2)/10000000.0- term_6/100000000.0+ (31031.0*sin(2*pos(2) - pos(3) + pos(4)))/100000000.0+ (27027.0*sin(2*pos(2) - 2*pos(3) + pos(4)))/100000000.0- (23343.0*sin(pos(3) - pos(4) - pos(5)))/400000000.0+ (24849.0*cos(pos(2) - pos(3) + pos(4) + pos(5)))/1000000000.0+ 105207843/800000000.0;
  M(1,2) = term_1 + (441029.0*cos(pos(2) - pos(3)))/500000000.0- (23343.0*sin(pos(2) - pos(5)))/400000000.0- term_2 + term_13/4000000000.0- term_14/4000000000.0- term_15/62500000.0- term_17/100000000.0+ term_16/400000000.0+ (23343.0*sin(pos(2) + pos(5)))/400000000.0- (18867.0*c_2)/100000000.0- (20331.0*sin(pos(2) - pos(3) - pos(5)))/400000000.0+ term_11/1000000000.0;
  M(1,3) = term_2 - (441029.0*cos(pos(2) - pos(3)))/500000000.0- term_1 - term_13/4000000000.0+ term_14/4000000000.0+ term_15/62500000.0+ term_17/100000000.0- term_16/400000000.0+ (20331.0*sin(pos(2) - pos(3) - pos(5)))/400000000.0- term_11/1000000000.0;
  M(1,4) = term_1 - term_2 + term_13/4000000000.0- term_14/4000000000.0- term_15/62500000.0- term_17/100000000.0+ term_11/1000000000.0;
  M(1,5) = (20002259.0*cos(pos(2) - pos(3) + pos(4)))/1000000000.0- (23343.0*sin(pos(2) - pos(5)))/400000000.0- term_2 - term_15/62500000.0- term_1 - term_16/400000000.0- (23343.0*sin(pos(2) + pos(5)))/400000000.0+ (24849.0*c_5)/1000000000.0- (20331.0*sin(pos(2) - pos(3) - pos(5)))/400000000.0- term_11/1000000000.0;
  M(2,1) = M(1,2);
  M(2,2) = (2536699.0*c_3)/25000000.0+ term_3/100000000.0 - term_5/250000000.0 - term_6/50000000.0+ term_9/100000000.0- term_10/50000000.0+ term_12/50000000.0+ term_7/100000000.0+ term_8/100000000.0+ term_4 + term_18/100000000.0- term_19/100000000.0+ 180370741/1000000000.0;
  M(2,3) = term_5/250000000.0 - term_3/100000000.0 - (2536699.0*c_3)/50000000.0+ term_6/50000000.0- term_9/200000000.0+ term_10/100000000.0- term_12/100000000.0- term_7/100000000.0- term_8/200000000.0- term_4 - term_18/200000000.0+ term_19/200000000.0- 95785421/1000000000.0;
  M(2,4) = term_3/200000000.0- term_5/250000000.0 - term_6/100000000.0+ term_9/200000000.0- term_10/100000000.0+ term_12/100000000.0+ term_7/200000000.0+ term_8/200000000.0+ term_4 + term_18/200000000.0- term_19/200000000.0+ 45729777/1000000000.0;
  M(2,5) = (753.0*s_5*(155.0*cos(pos(3) - pos(4)) + 135.0*c_4 + 96))/1000000000.0;
  M(3,1) = M(1,3);
  M(3,2) = M(2,3);
  M(3,3) = term_3/100000000.0 - term_5/250000000.0 - term_6/50000000.0+ term_7/100000000.0+ term_4 + 95785421/1000000000.0;
  M(3,4) = term_5/250000000.0 - term_3/200000000.0+ term_6/100000000.0- term_7/200000000.0- term_4 - 45729777/1000000000.0;
  M(3,5) = -(2259.0*s_5*(45.0*c_4 + 32))/1000000000.0;
  M(4,1) = M(1,4);
  M(4,2) = M(2,4);
  M(4,3) = M(3,4);
  M(4,4) = term_4 - term_5/250000000.0 + 45729777.0/1000000000.0;
  M(4,5) = (2259.0*s_5)/31250000.0;
  M(5,1) = M(1,5);
  M(5,2) = M(2,5);
  M(5,3) = M(3,5);
  M(5,4) = M(4,5);
  M(5,5) = 20002259.0/1000000000.0;
end