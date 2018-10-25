//
// Copyright (c) 2013 by 1801BM1@gmail.com
//______________________________________________________________________________
//
`timescale 1ns / 100ps

module vp_030
(
   inout[15:0] PIN_nAD,       // Address/Data inverted bus
                              //
   input       PIN_nSYNC,     //
   input       PIN_nDIN,      //
   input       PIN_nDOUT,     //
   input       PIN_nWTBT,     //
   input       PIN_MSEL,      //
   input       PIN_nRSEL,     //
   input       PIN_nDCLO,     //
   input       PIN_CLK,       //
   output      PIN_nRPLY,     //
                              //
   output[6:0] PIN_A,         //
   output[1:0] PIN_nRAS,      //
   output[1:0] PIN_nCAS,      //
   output      PIN_nWE,       //
   output      PIN_nDME,      //
   output      PIN_RSTB,      //
   output      PIN_LOCK       //
);

//______________________________________________________________________________
//
// Autogenerated netlist
//
wire GND = 1'b0;
wire VCC = 1'b1;

wire nMEM_REQ;
wire ACCESS;
wire nREFRESH;
wire nSYNC_E35;
wire nCAS;
wire nACCESS;
wire nCLK;
wire nRSEL;
wire CLKIN;
wire nRAS;
wire nMFG_TEST;
wire nPH3;
wire nREF_REQ;
wire RAS;
wire DIN;
wire nDOUT;
wire MFG_TEST;
wire WTBT;
wire A5;
wire nA11;
wire SYNC_E35;
wire A7;
wire nA13;
wire A6;
wire nA12;
wire CLK;
wire A14;
wire A10;
wire nA9;
wire A11;
wire nA10;
wire A12;
wire A13;
wire nSYNC_E36;
wire A8;
wire nA7;
wire A9;
wire nA8;
wire ACS_DONE;
wire nBIT3_6K;
wire A0;
wire nPH1;
wire nMSEL;
wire DME;
wire nDIN;
wire nA15;
wire A1;
wire nCAS1;
wire nSTART;
wire REF_DONE;
wire nCAS0;
wire nBIT2_2K;
wire A2;
wire UPPER_2K;
wire A3;
wire A4;
wire nA14;
wire DOUT;
wire DCLO;
wire RSTADR;
wire nWFLAG;
wire nWTBT;
wire RPLY;
wire nSYNC_LATE;

wire NET00003;
wire NET00305;
wire NET00005;
wire NET00006;
wire NET00007;
wire NET00008;
wire NET00009;
wire NET00010;
wire NET00011;
wire NET00307;
wire NET00013;
wire NET00014;
wire NET00015;
wire NET00016;
wire NET00308;
wire NET00019;
wire NET00020;
wire NET00022;
wire NET00023;
wire NET00004;
wire NET00025;
wire NET00027;
wire NET00028;
wire NET00029;
wire NET00030;
wire NET00031;
wire NET00032;
wire NET00034;
wire NET00036;
wire NET00037;
wire NET00038;
wire NET00039;
wire NET00041;
wire NET00042;
wire NET00074;
wire NET00189;
wire NET00046;
wire NET00047;
wire NET00285;
wire NET00049;
wire NET00051;
wire NET00033;
wire NET00056;
wire NET00057;
wire NET00058;
wire NET00083;
wire NET00060;
wire NET00061;
wire NET00062;
wire NET00063;
wire NET00233;
wire NET00065;
wire NET00018;
wire NET00067;
wire NET00068;
wire NET00085;
wire NET00075;
wire NET00076;
wire NET00077;
wire NET00078;
wire NET00079;
wire NET00080;
wire NET00081;
wire NET00082;
wire NET00200;
wire NET00084;
wire NET00241;
wire NET00088;
wire NET00089;
wire NET00091;
wire NET00092;
wire NET00093;
wire NET00094;
wire NET00095;
wire NET00096;
wire NET00099;
wire NET00100;
wire NET00101;
wire NET00104;
wire NET00105;
wire NET00106;
wire NET00107;
wire NET00242;
wire NET00040;
wire NET00114;
wire NET00119;
wire NET00229;
wire NET00122;
wire NET00228;
wire NET00124;
wire NET00131;
wire NET00132;
wire NET00133;
wire NET00134;
wire NET00135;
wire NET00136;
wire NET00137;
wire NET00138;
wire NET00140;
wire NET00141;
wire NET00142;
wire NET00143;
wire NET00144;
wire NET00145;
wire NET00146;
wire NET00147;
wire NET00148;
wire NET00150;
wire NET00169;
wire NET00152;
wire NET00153;
wire NET00157;
wire NET00159;
wire NET00160;
wire NET00161;
wire NET00162;
wire NET00163;
wire NET00164;
wire NET00223;
wire NET00166;
wire NET00167;
wire NET00222;
wire NET00170;
wire NET00171;
wire NET00237;
wire NET00173;
wire NET00174;
wire NET00232;
wire NET00176;
wire NET00267;
wire NET00179;
wire NET00231;
wire NET00183;
wire NET00184;
wire NET00239;
wire NET00186;
wire NET00187;
wire NET00188;
wire NET00190;
wire NET00191;
wire NET00192;
wire NET00193;
wire NET00195;
wire NET00196;
wire NET00197;
wire NET00198;
wire NET00240;
wire NET00201;
wire NET00202;
wire NET00203;
wire NET00151;
wire NET00205;
wire NET00206;
wire NET00236;
wire NET00235;
wire NET00209;
wire NET00210;
wire NET00265;
wire NET00212;
wire NET00213;
wire NET00215;
wire NET00217;
wire NET00218;
wire NET00220;
wire NET00221;
wire NET00224;
wire NET00269;
wire NET00226;
wire NET00227;
wire NET00268;
wire NET00275;
wire NET00254;
wire NET00257;
wire NET00258;
wire NET00273;
wire NET00274;
wire NET00276;
wire NET00277;
wire NET00251;
wire NET00259;
wire NET00252;
wire NET00243;
wire NET00244;
wire NET00245;
wire NET00249;
wire NET00256;
wire NET00292;
wire NET00250;
wire NET00289;
wire NET00290;
wire NET00301;
wire NET00299;
wire NET00272;
wire NET00298;
wire NET00296;
wire NET00295;
wire NET00294;
wire NET00271;
wire NET00284;
wire NET00278;
wire NET00280;
wire NET00304;
wire NET00287;

//______________________________________________________________________________
//
tOUTPUT_OE  PIN3_OUT(.x1(nBIT3_6K), .x2(NET00162), .y1(PIN_nAD[3]));
tOUTPUT_OE  PIN4_OUT(.x1(nBIT2_2K), .x2(NET00162), .y1(PIN_nAD[2]));

tINPUT      PIN1(.y2(NET00119),  .x1(PIN_nAD[5]));
tINPUT      PIN2(.y2(NET00280),  .x1(PIN_nAD[4]));
tINPUT      PIN3(.y1(NET00220),  .x1(PIN_nAD[3]));
tINPUT      PIN4(.y1(NET00217),  .x1(PIN_nAD[2]));
tINPUT      PIN5(.y2(NET00287),  .x1(PIN_nAD[1]));
tINPUT      PIN6(.y2(NET00285),  .x1(PIN_nAD[14]));
tINPUT      PIN7(.y2(NET00304),  .x1(PIN_nAD[0]));
tINPUT      PIN8(.y2(NET00077),  .x1(PIN_nDIN));
tINPUT      PIN9(.y2(DOUT),      .x1(PIN_nDOUT));
tINPUT      PIN10(.y2(CLKIN),    .x1(PIN_CLK));

tOUTPUT     PIN11(.x1(NET00259), .y1(PIN_nRAS[0]));
tOUTPUT     PIN12(.x1(NET00245), .y1(PIN_LOCK));
tOUTPUT_OC  PIN13(.x1(NET00256), .y1(PIN_nRPLY));
tOUTPUT     PIN14(.x1(NET00250), .y1(PIN_RSTB));
tOUTPUT     PIN15(.x1(NET00258), .y1(PIN_nDME));
tOUTPUT     PIN16(.x1(NET00252), .y1(PIN_nRAS[1]));
tINPUT      PIN17(.y1(nRSEL),    .x1(PIN_nRSEL));
tOUTPUT     PIN18(.x1(NET00191), .y1(PIN_nWE));
tOUTPUT     PIN19(.x1(NET00193), .y1(PIN_nCAS[0]));
tOUTPUT     PIN20(.x1(NET00227), .y1(PIN_nCAS[1]));

tOUTPUT     PIN22(.x1(NET00229), .y1(PIN_A[0]));
tOUTPUT     PIN23(.x1(NET00228), .y1(PIN_A[1]));
tOUTPUT     PIN24(.x1(NET00223), .y1(PIN_A[2]));
tOUTPUT     PIN25(.x1(NET00222), .y1(PIN_A[3]));
tOUTPUT     PIN26(.x1(NET00107), .y1(PIN_A[4]));
tOUTPUT     PIN27(.x1(NET00084), .y1(PIN_A[5]));
tOUTPUT     PIN28(.x1(NET00096), .y1(PIN_A[6]));
tINPUT      PIN29(.y2(NET00233), .x1(PIN_nWTBT));
tINPUT      PIN30(.y2(NET00082), .x1(PIN_nDCLO));
tINPUT      PIN31(.y2(NET00083), .x1(PIN_nAD[15]));

tINPUT      PIN32(.y2(NET00307), .x1(PIN_nSYNC));
tINPUT      PIN33(.y2(NET00085), .x1(PIN_MSEL));
tINPUT      PIN34(.y2(NET00074), .x1(PIN_nAD[13]));
tINPUT      PIN35(.y2(NET00078), .x1(PIN_nAD[12]));
tINPUT      PIN36(.y2(NET00081), .x1(PIN_nAD[11]));
tINPUT      PIN37(.y2(NET00114), .x1(PIN_nAD[10]));
tINPUT      PIN38(.y2(NET00091), .x1(PIN_nAD[9]));
tINPUT      PIN39(.y2(NET00092), .x1(PIN_nAD[8]));
tINPUT      PIN40(.y2(NET00124), .x1(PIN_nAD[7]));
tINPUT      PIN41(.y2(NET00122), .x1(PIN_nAD[6]));


//______________________________________________________________________________
//
// Refining the initial state for simulation - we should define the flip-flop states
//
//
// t379 cell_F14(.x1(nMEM_REQ), .y2(ACCESS), .x3(MFG_TEST), .y4(NET00033), .x5(NET00033), .x6(ACCESS), .x8(nREF_REQ));
//
t379 cell_F14(.x1(nMEM_REQ | RSTADR), .y2(ACCESS), .x3(MFG_TEST), .y4(NET00033), .x5(NET00033), .x6(ACCESS | RSTADR), .x8(nREF_REQ));

//
// t416 cell_F23(.c1(CLK), .q3(NET00197), .q4(NET00198), .d5(NET00051));
//
t416 cell_F23(.c1(CLK), .q3(NET00197), .q4(NET00198), .d5(NET00051 & ~RSTADR));

//
// t399 cell_H20(.r1(NET00018), .x2(NET00150), .q3(NET00151), .q4(NET00153), .s6(NET00150), .y7(NET00152));
//
t399 cell_H20(.r1(NET00018), .x2(NET00150), .q3(NET00151), .q4(NET00153), .s6(NET00150 | RSTADR), .y7(NET00152));

//______________________________________________________________________________
//
// Autogenerated cell instantiations
//
t399 cell_G2(.r1(NET00062), .x2(NET00063), .q4(NET00065), .s6(ACS_DONE), .y7(NET00062));
t399 cell_H4(.r1(NET00209), .x2(NET00063), .q3(NET00210), .q4(NET00205), .s6(NET00063), .y7(NET00206));
t399 cell_F12(.r1(REF_DONE), .x2(REF_DONE), .q3(NET00056), .q4(NET00058), .s6(NET00028), .y7(NET00057));
t399 cell_H14(.r1(nSYNC_LATE), .x2(nACCESS), .q3(DME), .s6(NET00003), .y7(NET00003));
t399 cell_G22(.r1(REF_DONE), .x2(NET00189), .q3(NET00186), .q4(NET00183), .s6(NET00189), .y7(NET00184));
t382 cell_H32(.x1(nA15), .y2(NET00161), .x3(nA14), .x4(nA13), .x5(nBIT2_2K), .x6(nA12), .y8(NET00159));
t418 cell_H0(.x1(NET00203), .x2(NET00203), .y3(NET00067), .y4(RPLY), .x5(NET00284), .x6(NET00067), .x10(NET00065));
t418 cell_H9(.x1(MFG_TEST), .x2(MFG_TEST), .y3(nMFG_TEST), .y4(NET00169), .x5(CLKIN), .x6(nMFG_TEST), .x10(NET00032));
t391 cell_B2(.x1(RAS), .x2(nA15), .y3(NET00277), .y4(NET00259), .x5(NET00276), .x6(nREFRESH), .y9(NET00276), .x10(NET00277));
t391 cell_I2(.x1(DME), .x2(nRSEL), .y3(NET00257), .y4(NET00258), .x5(DIN), .x6(DIN), .y9(NET00162), .x10(NET00257));
t416 cell_M21(.c1(NET00013), .q3(NET00020), .q4(NET00022), .d5(NET00019));
t419 cell_H25(.x1(NET00160), .y2(NET00244), .x4(NET00157), .x5(NET00159), .x6(NET00161), .x10(NET00148));
t405 cell_D33(.c1(nDOUT), .x2(nDOUT), .q3(NET00267), .q4(NET00268), .r5(WTBT), .y7(NET00269), .s10(nWTBT));
t416 cell_N21(.c1(NET00271), .q3(NET00299), .q4(NET00301), .d5(NET00294));
t378 cell_G23(.x1(NET00134), .y2(NET00189), .x3(NET00135), .x5(NET00146));
t378 cell_A3(.x1(nPH3), .y2(NET00250), .x3(nACCESS), .x5(nPH1));
t378 cell_H29(.x1(nA9), .y2(NET00148), .x3(nA10), .x5(A11));
t387 cell_A16(.x1(ACCESS), .y2(NET00193), .x3(nCAS), .y4(NET00192), .x5(NET00192), .x6(nCAS0));
t406 cell_M26(.c1(NET00011), .r2(RSTADR), .q4(NET00007), .r5(NET00009), .s10(NET00010));
t383 cell_H33(.x1(A11), .y2(NET00160), .x3(A12), .x4(nA13), .x5(nA15), .x6(nA14));
t387 cell_A20(.x1(ACCESS), .y2(NET00227), .x3(nCAS), .y4(NET00249), .x5(NET00249), .x6(nCAS1));
t387 cell_D14(.x1(nREFRESH), .y2(NET00075), .x3(nREFRESH), .y4(REF_DONE), .x5(nPH1), .x6(nCAS));
t387 cell_G12(.x1(nMFG_TEST), .y2(NET00028), .x3(NET00027), .y4(NET00025), .x5(NET00025), .x6(NET00029));
t428 cell_E1(.x2(NET00202), .y3(nCLK));
t428 cell_E2(.x2(NET00201), .y3(CLK));
t428 cell_E5(.x2(NET00196), .y3(RAS));
t428 cell_E11(.x2(NET00075), .y3(NET00076));
t428 cell_E12(.x2(NET00079), .y3(NET00080));
t428 cell_E19(.x2(NET00060), .y3(nCAS));
t428 cell_E20(.x2(NET00034), .y3(nPH1));
t379 cell_B20(.x1(A0), .y2(nCAS1), .x3(NET00305), .y4(MFG_TEST), .x5(nWFLAG), .x6(nDOUT), .x8(nDIN));
t375 cell_L4(.y3(NET00218), .x5(NET00217), .x6(NET00220), .y9(NET00221));
t390 cell_A2(.x1(NET00251), .y4(NET00252), .x5(RAS), .x6(nA15), .y9(NET00251), .x10(nREFRESH));
t390 cell_J6(.x1(nDOUT), .y4(NET00278), .x5(NET00265), .x6(nDIN), .y9(NET00063), .x10(nDOUT));
t428 cell_E25(.x2(NET00195), .y3(ACS_DONE));
t421 cell_I4(.x1(NET00133), .y2(NET00018), .x3(nSYNC_LATE), .x4(nSYNC_E35), .x5(nMSEL), .x6(RPLY), .x10(nSTART));
t428 cell_E33(.x2(NET00233), .y3(WTBT));
t371 cell_I6(.x1(SYNC_E35), .y3(nSYNC_LATE), .y4(SYNC_E35), .x6(nSYNC_E35));
t404 cell_D32(.c1(NET00269), .q3(NET00305), .r5(NET00268), .s10(NET00267));
t414 cell_G1(.s4(ACS_DONE), .r5(SYNC_E35), .q6(NET00284), .r9(NET00068), .s10(VCC));
t376 cell_F16(.x1(NET00049), .x3(NET00046), .y4(NET00051), .x6(NET00033), .x8(ACCESS), .y9(NET00049));
t404 cell_L6(.c1(NET00213), .q4(nBIT3_6K), .r5(NET00224), .s10(NET00226));
t376 cell_J19(.x1(NET00076), .x3(A7), .y4(NET00093), .x6(NET00080), .x8(A14), .y9(NET00095));
t428 cell_E34(.x2(NET00082), .y3(DCLO));
t380 cell_A11(.x1(nACCESS), .y2(NET00191), .y3(NET00190), .x4(nPH1), .x5(NET00190), .x6(nWFLAG));
t385 cell_I35(.x1(UPPER_2K), .x2(NET00244), .y3(NET00132), .x5(NET00243), .y8(NET00245));
t428 cell_K1(.x2(NET00077), .y3(DIN));
t406 cell_H2(.c1(NET00206), .r2(ACS_DONE), .q3(NET00068), .r5(NET00205), .s10(NET00210));
t428 cell_K15(.x2(NET00274), .y3(RSTADR));
t416 cell_O22(.c1(CLK), .q3(NET00289), .q4(NET00292), .d5(NET00271));
t406 cell_D36(.c1(nSYNC_E36), .r2(DOUT), .q3(nWFLAG), .r5(WTBT), .s10(nWTBT));
t416 cell_O23(.c1(nSYNC_E36), .q3(nA15), .d5(NET00083));
t429 cell_E15(.y3(nREFRESH), .x5(NET00033));
t429 cell_E14(.y3(nACCESS), .x5(ACCESS));
t374 cell_A5(.x1(nDOUT), .x2(NET00254), .x3(nRSEL), .y4(NET00254), .y8(NET00213));
t429 cell_E32(.y3(nWTBT), .x5(WTBT));
t406 cell_D37(.c1(nSYNC_E36), .r2(ACS_DONE), .q4(NET00265), .r5(WTBT), .s10(nWTBT));
t429 cell_E36(.y3(nSYNC_E36), .x5(NET00307));
t406 cell_N20(.c1(NET00272), .r2(RSTADR), .q4(NET00294), .r5(NET00299), .s10(NET00301));
t406 cell_M20(.c1(NET00023), .r2(RSTADR), .q4(NET00019), .r5(NET00020), .s10(NET00022));
t406 cell_H19(.c1(NET00152), .r2(NET00018), .q3(nMEM_REQ), .r5(NET00153), .s10(NET00151));
t404 cell_L8(.c1(NET00213), .q4(nBIT2_2K), .r5(NET00275), .s10(NET00215));
t380 cell_B16(.x1(NET00179), .y2(NET00179), .y3(nCAS0), .x4(nWFLAG), .x5(A0), .x6(NET00305));
t383 cell_H27(.x1(nBIT3_6K), .y2(NET00157), .x3(UPPER_2K), .x4(nA13), .x5(nA15), .x6(nA14));
t404 cell_L10(.c1(NET00254), .q3(NET00226), .q4(NET00224), .r5(NET00220), .s10(NET00221));
t376 cell_J23(.x1(NET00076), .x3(A6), .y4(NET00099), .x6(NET00080), .x8(A13), .y9(NET00100));
t377 cell_D2(.x1(NET00200), .y2(NET00200), .x3(nCLK), .y4(NET00201), .x5(CLKIN), .x6(CLKIN), .x8(CLK), .y9(NET00202));
t406 cell_O21(.c1(NET00290), .r2(RSTADR), .q4(NET00271), .r5(NET00289), .s10(NET00292));
t429 cell_E35(.y3(nSYNC_E35), .x5(NET00307));
t429 cell_K2(.y3(nDIN), .x5(DIN));
t406 cell_L21(.c1(NET00042), .r2(RSTADR), .q4(NET00039), .r5(NET00040), .s10(NET00041));
t417 cell_I0(.x1(RPLY), .y4(NET00256), .x5(DIN), .x6(RPLY), .x10(DOUT));
t406 cell_M23(.c1(NET00016), .r2(RSTADR), .q4(NET00013), .r5(NET00014), .s10(NET00015));
t383 cell_H35(.x1(A6), .y2(NET00243), .x3(nA7), .x4(nA8), .x5(nA10), .x6(nA9));
t374 cell_H5(.x1(ACS_DONE), .x2(NET00212), .x3(nSYNC_E36), .y4(NET00212), .y8(NET00209));
t416 cell_O24(.c1(nSYNC_E36), .q3(nA14), .q4(A14), .d5(NET00285));
t374 cell_L14(.x1(nRSEL), .x2(DCLO), .x3(NET00273), .y4(NET00274), .y8(NET00273));
t416 cell_O25(.c1(nSYNC_E35), .q4(A0), .d5(NET00304));
t374 cell_I22(.x1(DCLO), .x2(NET00131), .x3(NET00132), .y4(NET00131), .y8(NET00133));
t406 cell_N26(.c1(NET00295), .r2(RSTADR), .q4(NET00143), .r5(NET00296), .s10(NET00298));
t406 cell_N30(.c1(NET00145), .r2(RSTADR), .q3(NET00146), .q4(NET00147), .r5(NET00308), .s10(NET00144));
t406 cell_M30(.c1(NET00006), .r2(RSTADR), .q4(NET00008), .r5(NET00174), .s10(NET00176));
t404 cell_L11(.c1(NET00254), .q3(NET00275), .q4(NET00215), .r5(NET00218), .s10(NET00217));
t416 cell_O26(.c1(nSYNC_E35), .q4(A1), .d5(NET00287));
t404 cell_F11(.c1(NET00057), .q4(nREF_REQ), .r5(NET00058), .s10(NET00056));
t379 cell_G11(.x1(NET00031), .y2(NET00027), .x3(NET00032), .y4(NET00029), .x5(NET00030), .x6(NET00030), .x8(nMEM_REQ));
t429 cell_K3(.y3(nDOUT), .x5(DOUT));
t383 cell_H37(.x1(nA11), .y2(UPPER_2K), .x3(nA12), .x4(nA13), .x5(nA15), .x6(nA14));
t376 cell_J25(.x1(NET00076), .x3(A5), .y4(NET00104), .x6(NET00080), .x8(A12), .y9(NET00105));
t376 cell_J29(.x1(NET00076), .x3(A4), .y4(NET00088), .x6(NET00080), .x8(A11), .y9(NET00089));
t384 cell_D12(.x1(NET00075), .y3(NET00079), .x5(nREFRESH));
t416 cell_O27(.c1(nSYNC_E35), .q3(A2), .d5(NET00217));
t417 cell_J4(.x1(NET00063), .y4(nSTART), .x5(NET00067), .x6(NET00278), .x10(NET00203));
t416 cell_O28(.c1(nSYNC_E35), .q3(A3), .d5(NET00220));
t416 cell_O29(.c1(nSYNC_E35), .q4(A4), .d5(NET00280));
t416 cell_O30(.c1(nSYNC_E35), .q4(A5), .d5(NET00119));
t376 cell_J31(.x1(NET00076), .x3(A3), .y4(NET00235), .x6(NET00080), .x8(A10), .y9(NET00236));
t379 cell_F25(.x1(nPH3), .y2(NET00195), .x3(nRAS), .y4(NET00150), .x5(nACCESS), .x6(nACCESS), .x8(nCAS));
t404 cell_F17(.c1(nCLK), .q3(NET00046), .r5(nPH3), .s10(NET00047));
t416 cell_O31(.c1(nSYNC_E35), .q4(A6), .d5(NET00122));
t376 cell_J35(.x1(NET00076), .x3(A2), .y4(NET00239), .x6(NET00080), .x8(A9), .y9(NET00240));
t376 cell_J38(.x1(NET00076), .x3(A1), .y4(NET00231), .x6(NET00080), .x8(A8), .y9(NET00232));
t416 cell_O32(.c1(nSYNC_E35), .q3(nA7), .q4(A7), .d5(NET00124));
t379 cell_J20(.x1(NET00094), .y2(NET00096), .x3(NET00095), .y4(NET00094), .x5(NET00093), .x6(NET00039), .x8(nREFRESH));
t404 cell_F19(.c1(CLK), .q3(NET00047), .q4(nPH3), .r5(NET00060), .s10(NET00061));
t379 cell_J24(.x1(NET00101), .y2(NET00084), .x3(NET00100), .y4(NET00101), .x5(NET00099), .x6(NET00019), .x8(nREFRESH));
t404 cell_F20(.c1(nCLK), .q3(NET00061), .q4(NET00060), .r5(NET00038), .s10(NET00036));
t379 cell_J26(.x1(NET00106), .y2(NET00107), .x3(NET00105), .y4(NET00106), .x5(NET00104), .x6(NET00013), .x8(nREFRESH));
t404 cell_F21(.c1(CLK), .q3(NET00188), .q4(NET00187), .r5(nRAS), .s10(NET00196));
t379 cell_J30(.x1(NET00237), .y2(NET00222), .x3(NET00089), .y4(NET00237), .x5(NET00088), .x6(NET00007), .x8(nREFRESH));
t404 cell_F22(.c1(nCLK), .q3(NET00196), .q4(nRAS), .r5(NET00197), .s10(NET00198));
t379 cell_J32(.x1(NET00004), .y2(NET00223), .x3(NET00236), .y4(NET00004), .x5(NET00235), .x6(NET00008), .x8(nREFRESH));
t379 cell_J36(.x1(NET00242), .y2(NET00228), .x3(NET00240), .y4(NET00242), .x5(NET00239), .x6(NET00005), .x8(nREFRESH));
t416 cell_O33(.c1(nSYNC_E36), .q3(nA8), .q4(A8), .d5(NET00092));
t416 cell_O34(.c1(nSYNC_E36), .q3(nA9), .q4(A9), .d5(NET00091));
t379 cell_J39(.x1(NET00241), .y2(NET00229), .x3(NET00232), .y4(NET00241), .x5(NET00231), .x6(NET00167), .x8(nREFRESH));
t404 cell_G19(.c1(CLK), .q3(NET00036), .q4(NET00038), .r5(NET00034), .s10(NET00037));
t416 cell_O35(.c1(nSYNC_E36), .q3(nA10), .q4(A10), .d5(NET00114));
t416 cell_O36(.c1(nSYNC_E36), .q3(nA11), .q4(A11), .d5(NET00081));
t416 cell_O37(.c1(nSYNC_E36), .q3(nA12), .q4(A12), .d5(NET00078));
t416 cell_O38(.c1(nSYNC_E36), .q3(nA13), .q4(A13), .d5(NET00074));
t404 cell_G20(.c1(nCLK), .q3(NET00037), .q4(NET00034), .r5(NET00187), .s10(NET00188));
t404 cell_G21(.c1(NET00184), .q4(NET00030), .r5(NET00183), .s10(NET00186));
t370 cell_H1(.y2(NET00203), .x5(GND));
t370 cell_N19(.y2(NET00272), .x5(NET00271));
t370 cell_M19(.y2(NET00023), .x5(NET00013));
t370 cell_L20(.y2(NET00042), .x5(NET00019));
t370 cell_O20(.y2(NET00290), .x5(CLK));
t370 cell_M22(.y2(NET00016), .x5(NET00007));
t370 cell_M25(.y2(NET00011), .x5(NET00008));
t370 cell_N25(.y2(NET00295), .x5(NET00294));
t370 cell_M29(.y2(NET00006), .x5(NET00005));
t370 cell_N29(.y2(NET00145), .x5(NET00143));
t370 cell_N33(.y2(NET00142), .x5(NET00147));
t370 cell_M33(.y2(NET00171), .x5(NET00167));
t370 cell_M37(.y2(NET00164), .x5(NET00169));
t370 cell_N37(.y2(NET00138), .x5(NET00135));
t406 cell_M34(.c1(NET00171), .r2(RSTADR), .q4(NET00005), .r5(NET00170), .s10(NET00173));
t406 cell_N34(.c1(NET00142), .r2(RSTADR), .q3(NET00031), .q4(NET00135), .r5(NET00140), .s10(NET00141));
t406 cell_M38(.c1(NET00164), .r2(RSTADR), .q4(NET00167), .r5(NET00163), .s10(NET00166));
t406 cell_N38(.c1(NET00138), .r2(RSTADR), .q3(NET00032), .q4(NET00134), .r5(NET00136), .s10(NET00137));
t416 cell_O39(.c1(nSYNC_E36), .q4(nMSEL), .d5(NET00085));
t416 cell_L22(.c1(NET00019), .q3(NET00040), .q4(NET00041), .d5(NET00039));
t416 cell_M24(.c1(NET00007), .q3(NET00014), .q4(NET00015), .d5(NET00013));
t416 cell_M27(.c1(NET00008), .q3(NET00009), .q4(NET00010), .d5(NET00007));
t416 cell_N27(.c1(NET00294), .q3(NET00296), .q4(NET00298), .d5(NET00143));
t416 cell_N31(.c1(NET00143), .q3(NET00308), .q4(NET00144), .d5(NET00147));
t416 cell_M31(.c1(NET00005), .q3(NET00174), .q4(NET00176), .d5(NET00008));
t416 cell_M35(.c1(NET00167), .q3(NET00170), .q4(NET00173), .d5(NET00005));
t416 cell_N35(.c1(NET00147), .q3(NET00140), .q4(NET00141), .d5(NET00135));
t416 cell_N39(.c1(NET00135), .q3(NET00136), .q4(NET00137), .d5(NET00134));
t416 cell_M39(.c1(NET00169), .q3(NET00163), .q4(NET00166), .d5(NET00167));

//______________________________________________________________________________
//
assign      PIN_nAD[15:4]     = 12'HZZZ;
assign      PIN_nAD[1:0]      = 2'HZ;
endmodule
//______________________________________________________________________________
//
