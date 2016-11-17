%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Avalia o tempo (em segundos) da prote�na insulina
%% ao passar no algoritmo Blast do site Uniprot
%%
%% @Autor: Anderson Ferreira Sepulveda
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

arquivo = 'Uniprot-Insulina.xlsx';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pega os valores de de tempo do arquivo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dom_00 = xlsread(arquivo,'G1101:G1106');
dom_01 = xlsread(arquivo,'G1201:G1206');
dom_02 = xlsread(arquivo,'G1301:G1303');
dom_03 = xlsread(arquivo,'G1312:G1313');
dom_04 = xlsread(arquivo,'G1327:G1328');
dom_05 = xlsread(arquivo,'G1345:G1346');
dom_06 = xlsread(arquivo,'G1401:G1406');
dom_07 = xlsread(arquivo,'G1501:G1506');
dom_08 = xlsread(arquivo,'G1601:G1606');
dom_09 = xlsread(arquivo,'G1701:G1706');
dom_10 = xlsread(arquivo,'G1801:G1806');
dom_11 = xlsread(arquivo,'G1901:G1906');
dom_12 = xlsread(arquivo,'G2001:G2006');
dom_13 = xlsread(arquivo,'G2:G7');
dom_14 = xlsread(arquivo,'G103:G108');
dom_15 = xlsread(arquivo,'G201:G206');
dom_16 = xlsread(arquivo,'G301:G306');
dom_17 = xlsread(arquivo,'G401:G406');
dom_18 = xlsread(arquivo,'G501:G506');
dom_19 = xlsread(arquivo,'G601:G611');
dom_20 = xlsread(arquivo,'G701:G706');
dom_21 = xlsread(arquivo,'G801:G808');
dom_22 = xlsread(arquivo,'G901:G908');
dom_23 = xlsread(arquivo,'G1001:G1008');

seg_00 = xlsread(arquivo,'I1101:I1106');
seg_01 = xlsread(arquivo,'I1201:I1206');
seg_02 = xlsread(arquivo,'I1301:I1303');
seg_03 = xlsread(arquivo,'I1312:I1313');
seg_04 = xlsread(arquivo,'I1327:I1328');
seg_05 = xlsread(arquivo,'I1345:I1346');
seg_06 = xlsread(arquivo,'I1401:I1406');
seg_07 = xlsread(arquivo,'I1501:I1507');
seg_08 = xlsread(arquivo,'I1601:I1605');
seg_09 = xlsread(arquivo,'I1701:I1708');
seg_10 = xlsread(arquivo,'I1801:I1806');
seg_11 = xlsread(arquivo,'I1901:I1907');
seg_12 = xlsread(arquivo,'I2001:I2006');
seg_13 = xlsread(arquivo,'I2:I7');
seg_14 = xlsread(arquivo,'I103:I108');
seg_15 = xlsread(arquivo,'I201:I206');
seg_16 = xlsread(arquivo,'I301:I306');
seg_17 = xlsread(arquivo,'I401:I408');
seg_18 = xlsread(arquivo,'I501:I508');
seg_19 = xlsread(arquivo,'I601:I607');
seg_20 = xlsread(arquivo,'I701:I706');
seg_21 = xlsread(arquivo,'I801:I806');
seg_22 = xlsread(arquivo,'I901:I906');
seg_23 = xlsread(arquivo,'I1001:I1006');

ter_00 = xlsread(arquivo,'K1101:K1106');
ter_01 = xlsread(arquivo,'K1201:K1206');
ter_02 = xlsread(arquivo,'K1301:K1303');
ter_03 = xlsread(arquivo,'K1312:K1313');
ter_04 = xlsread(arquivo,'K1327:K1328');
ter_05 = xlsread(arquivo,'K1345:K1346');
ter_06 = xlsread(arquivo,'K1401:K1406');
ter_07 = xlsread(arquivo,'K1501:K1506');
ter_08 = xlsread(arquivo,'K1601:K1606');
ter_09 = xlsread(arquivo,'K1701:K1711');
ter_10 = xlsread(arquivo,'K1801:K1806');
ter_11 = xlsread(arquivo,'K1901:K1906');
ter_12 = xlsread(arquivo,'K2001:K2006');
ter_13 = xlsread(arquivo,'K2:K9');
ter_14 = xlsread(arquivo,'K103:K108');
ter_15 = xlsread(arquivo,'K201:K206');
ter_16 = xlsread(arquivo,'K301:K306');
ter_17 = xlsread(arquivo,'K401:K406');
ter_18 = xlsread(arquivo,'K501:K506');
ter_19 = xlsread(arquivo,'K601:K606');
ter_20 = xlsread(arquivo,'K701:K706');
ter_21 = xlsread(arquivo,'K801:K806');
ter_22 = xlsread(arquivo,'K901:K906');
ter_23 = xlsread(arquivo,'K1001:K1006');

qua_00 = xlsread(arquivo,'M1101:M1107');
qua_01 = xlsread(arquivo,'M1201:M1206');
qua_02 = xlsread(arquivo,'M1301:M1303');
qua_03 = xlsread(arquivo,'M1312:M1313');
qua_04 = xlsread(arquivo,'M1327:M1328');
qua_05 = xlsread(arquivo,'M1345:M1346');
qua_06 = xlsread(arquivo,'M1401:M1406');
qua_07 = xlsread(arquivo,'M1501:M1506');
qua_08 = xlsread(arquivo,'M1601:M1604');
qua_09 = xlsread(arquivo,'M1701:M1706');
qua_10 = xlsread(arquivo,'M1801:M1806');
qua_11 = xlsread(arquivo,'M1901:M1906');
qua_12 = xlsread(arquivo,'M2001:M2006');
qua_13 = xlsread(arquivo,'M2:M7');
qua_14 = xlsread(arquivo,'M103:M108');
qua_15 = xlsread(arquivo,'M201:M207');
qua_16 = xlsread(arquivo,'M301:M306');
qua_17 = xlsread(arquivo,'M401:M406');
qua_18 = xlsread(arquivo,'M501:M506');
qua_19 = xlsread(arquivo,'M601:M609');
qua_20 = xlsread(arquivo,'M701:M708');
qua_21 = xlsread(arquivo,'M801:M807');
qua_22 = xlsread(arquivo,'M901:M906');
qua_23 = xlsread(arquivo,'M1001:M1006');

qui_00 = xlsread(arquivo,'A1101:A1106');
qui_01 = xlsread(arquivo,'A1201:A1206');
qui_02 = xlsread(arquivo,'A1301:A1303');
qui_03 = xlsread(arquivo,'A1312:A1313');
qui_04 = xlsread(arquivo,'A1327:A1328');
qui_05 = xlsread(arquivo,'A1345:A1346');
qui_06 = xlsread(arquivo,'A1401:A1406');
qui_07 = xlsread(arquivo,'A1501:A1506');
qui_08 = xlsread(arquivo,'A1601:A1606');
qui_09 = xlsread(arquivo,'A1701:A1706');
qui_10 = xlsread(arquivo,'A1801:A1806');
qui_11 = xlsread(arquivo,'A1901:A1906');
qui_12 = xlsread(arquivo,'A2001:A2006');
qui_13 = xlsread(arquivo,'A2:A7');
qui_14 = xlsread(arquivo,'A103:A108');
qui_15 = xlsread(arquivo,'A201:A206');
qui_16 = xlsread(arquivo,'A301:A306');
qui_17 = xlsread(arquivo,'A401:A406');
qui_18 = xlsread(arquivo,'A501:A506');
qui_19 = xlsread(arquivo,'A601:A606');
qui_20 = xlsread(arquivo,'A701:A706');
qui_21 = xlsread(arquivo,'A801:A806');
qui_22 = xlsread(arquivo,'A901:A906');
qui_23 = xlsread(arquivo,'A1001:A1006');

sex_00 = xlsread(arquivo,'C1101:C1106');
sex_01 = xlsread(arquivo,'C1201:C1206');
sex_02 = xlsread(arquivo,'C1301:C1303');
sex_03 = xlsread(arquivo,'C1312:C1313');
sex_04 = xlsread(arquivo,'C1327:C1328');
sex_05 = xlsread(arquivo,'C1345:C1346');
sex_06 = xlsread(arquivo,'C1401:C1406');
sex_07 = xlsread(arquivo,'C1501:C1506');
sex_08 = xlsread(arquivo,'C1601:C1606');
sex_09 = xlsread(arquivo,'C1701:C1706');
sex_10 = xlsread(arquivo,'C1801:C1806');
sex_11 = xlsread(arquivo,'C1901:C1906');
sex_12 = xlsread(arquivo,'C2001:C2006');
sex_13 = xlsread(arquivo,'C2:C9');
sex_14 = xlsread(arquivo,'C103:C108');
sex_15 = xlsread(arquivo,'C201:C206');
sex_16 = xlsread(arquivo,'C301:C306');
sex_17 = xlsread(arquivo,'C401:C406');
sex_18 = xlsread(arquivo,'C501:C506');
sex_19 = xlsread(arquivo,'C601:C606');
sex_20 = xlsread(arquivo,'C701:C706');
sex_21 = xlsread(arquivo,'C801:C806');
sex_22 = xlsread(arquivo,'C901:C906');
sex_23 = xlsread(arquivo,'C1001:C1006');

sab_00 = xlsread(arquivo,'E1101:E1106');
sab_01 = xlsread(arquivo,'E1201:E1206');
sab_02 = xlsread(arquivo,'E1301:E1303');
sab_03 = xlsread(arquivo,'E1312:E1313');
sab_04 = xlsread(arquivo,'E1327:E1328');
sab_05 = xlsread(arquivo,'E1345:E1346');
sab_06 = xlsread(arquivo,'E1401:E1406');
sab_07 = xlsread(arquivo,'E1501:E1506');
sab_08 = xlsread(arquivo,'E1601:E1606');
sab_09 = xlsread(arquivo,'E1701:E1708');
sab_10 = xlsread(arquivo,'E1801:E1806');
sab_11 = xlsread(arquivo,'E1901:E1906');
sab_12 = xlsread(arquivo,'E2001:E2006');
sab_13 = xlsread(arquivo,'E2:E7');
sab_14 = xlsread(arquivo,'E103:E108');
sab_15 = xlsread(arquivo,'E201:E209');
sab_16 = xlsread(arquivo,'E301:E310');
sab_17 = xlsread(arquivo,'E401:E408');
sab_18 = xlsread(arquivo,'E501:E508');
sab_19 = xlsread(arquivo,'E601:E611');
sab_20 = xlsread(arquivo,'E701:E708');
sab_21 = xlsread(arquivo,'E801:E806');
sab_22 = xlsread(arquivo,'E901:E906');
sab_23 = xlsread(arquivo,'E1001:E1006');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calcula a m�dia de cada hora
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m_dom_00 = mean(dom_00);
m_dom_01 = mean(dom_01);
m_dom_02 = mean(dom_02);
m_dom_03 = mean(dom_03);
m_dom_04 = mean(dom_04);
m_dom_05 = mean(dom_05);
m_dom_06 = mean(dom_06);
m_dom_07 = mean(dom_07);
m_dom_08 = mean(dom_08);
m_dom_09 = mean(dom_09);
m_dom_10 = mean(dom_10);
m_dom_11 = mean(dom_11);
m_dom_12 = mean(dom_12);
m_dom_13 = mean(dom_13);
m_dom_14 = mean(dom_14);
m_dom_15 = mean(dom_15);
m_dom_16 = mean(dom_16);
m_dom_17 = mean(dom_17);
m_dom_18 = mean(dom_18);
m_dom_19 = mean(dom_19);
m_dom_20 = mean(dom_20);
m_dom_21 = mean(dom_21);
m_dom_22 = mean(dom_22);
m_dom_23 = mean(dom_23);

m_seg_00 = mean(seg_00);
m_seg_01 = mean(seg_01);
m_seg_02 = mean(seg_02);
m_seg_03 = mean(seg_03);
m_seg_04 = mean(seg_04);
m_seg_05 = mean(seg_05);
m_seg_06 = mean(seg_06);
m_seg_07 = mean(seg_07);
m_seg_08 = mean(seg_08);
m_seg_09 = mean(seg_09);
m_seg_10 = mean(seg_10);
m_seg_11 = mean(seg_11);
m_seg_12 = mean(seg_12);
m_seg_13 = mean(seg_13);
m_seg_14 = mean(seg_14);
m_seg_15 = mean(seg_15);
m_seg_16 = mean(seg_16);
m_seg_17 = mean(seg_17);
m_seg_18 = mean(seg_18);
m_seg_19 = mean(seg_19);
m_seg_20 = mean(seg_20);
m_seg_21 = mean(seg_21);
m_seg_22 = mean(seg_22);
m_seg_23 = mean(seg_23);

m_ter_00 = mean(ter_00);
m_ter_01 = mean(ter_01);
m_ter_02 = mean(ter_02);
m_ter_03 = mean(ter_03);
m_ter_04 = mean(ter_04);
m_ter_05 = mean(ter_05);
m_ter_06 = mean(ter_06);
m_ter_07 = mean(ter_07);
m_ter_08 = mean(ter_08);
m_ter_09 = mean(ter_09);
m_ter_10 = mean(ter_10);
m_ter_11 = mean(ter_11);
m_ter_12 = mean(ter_12);
m_ter_13 = mean(ter_13);
m_ter_14 = mean(ter_14);
m_ter_15 = mean(ter_15);
m_ter_16 = mean(ter_16);
m_ter_17 = mean(ter_17);
m_ter_18 = mean(ter_18);
m_ter_19 = mean(ter_19);
m_ter_20 = mean(ter_20);
m_ter_21 = mean(ter_21);
m_ter_22 = mean(ter_22);
m_ter_23 = mean(ter_23);

m_qua_00 = mean(qua_00);
m_qua_01 = mean(qua_01);
m_qua_02 = mean(qua_02);
m_qua_03 = mean(qua_03);
m_qua_04 = mean(qua_04);
m_qua_05 = mean(qua_05);
m_qua_06 = mean(qua_06);
m_qua_07 = mean(qua_07);
m_qua_08 = mean(qua_08);
m_qua_09 = mean(qua_09);
m_qua_10 = mean(qua_10);
m_qua_11 = mean(qua_11);
m_qua_12 = mean(qua_12);
m_qua_13 = mean(qua_13);
m_qua_14 = mean(qua_14);
m_qua_15 = mean(qua_15);
m_qua_16 = mean(qua_16);
m_qua_17 = mean(qua_17);
m_qua_18 = mean(qua_18);
m_qua_19 = mean(qua_19);
m_qua_20 = mean(qua_20);
m_qua_21 = mean(qua_21);
m_qua_22 = mean(qua_22);
m_qua_23 = mean(qua_23);

m_qui_00 = mean(qui_00);
m_qui_01 = mean(qui_01);
m_qui_02 = mean(qui_02);
m_qui_03 = mean(qui_03);
m_qui_04 = mean(qui_04);
m_qui_05 = mean(qui_05);
m_qui_06 = mean(qui_06);
m_qui_07 = mean(qui_07);
m_qui_08 = mean(qui_08);
m_qui_09 = mean(qui_09);
m_qui_10 = mean(qui_10);
m_qui_11 = mean(qui_11);
m_qui_12 = mean(qui_12);
m_qui_13 = mean(qui_13);
m_qui_14 = mean(qui_14);
m_qui_15 = mean(qui_15);
m_qui_16 = mean(qui_16);
m_qui_17 = mean(qui_17);
m_qui_18 = mean(qui_18);
m_qui_19 = mean(qui_19);
m_qui_20 = mean(qui_20);
m_qui_21 = mean(qui_21);
m_qui_22 = mean(qui_22);
m_qui_23 = mean(qui_23);

m_sex_00 = mean(sex_00);
m_sex_01 = mean(sex_01);
m_sex_02 = mean(sex_02);
m_sex_03 = mean(sex_03);
m_sex_04 = mean(sex_04);
m_sex_05 = mean(sex_05);
m_sex_06 = mean(sex_06);
m_sex_07 = mean(sex_07);
m_sex_08 = mean(sex_08);
m_sex_09 = mean(sex_09);
m_sex_10 = mean(sex_10);
m_sex_11 = mean(sex_11);
m_sex_12 = mean(sex_12);
m_sex_13 = mean(sex_13);
m_sex_14 = mean(sex_14);
m_sex_15 = mean(sex_15);
m_sex_16 = mean(sex_16);
m_sex_17 = mean(sex_17);
m_sex_18 = mean(sex_18);
m_sex_19 = mean(sex_19);
m_sex_20 = mean(sex_20);
m_sex_21 = mean(sex_21);
m_sex_22 = mean(sex_22);
m_sex_23 = mean(sex_23);

m_sab_00 = mean(sab_00);
m_sab_01 = mean(sab_01);
m_sab_02 = mean(sab_02);
m_sab_03 = mean(sab_03);
m_sab_04 = mean(sab_04);
m_sab_05 = mean(sab_05);
m_sab_06 = mean(sab_06);
m_sab_07 = mean(sab_07);
m_sab_08 = mean(sab_08);
m_sab_09 = mean(sab_09);
m_sab_10 = mean(sab_10);
m_sab_11 = mean(sab_11);
m_sab_12 = mean(sab_12);
m_sab_13 = mean(sab_13);
m_sab_14 = mean(sab_14);
m_sab_15 = mean(sab_15);
m_sab_16 = mean(sab_16);
m_sab_17 = mean(sab_17);
m_sab_18 = mean(sab_18);
m_sab_19 = mean(sab_19);
m_sab_20 = mean(sab_20);
m_sab_21 = mean(sab_21);
m_sab_22 = mean(sab_22);
m_sab_23 = mean(sab_23);

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calcula o desvio padr�o
%%%%%%%%%%%%%%%%%%%%%%%%%%
d_dom_00 = std(dom_00);
d_dom_01 = std(dom_01);
d_dom_02 = std(dom_02);
d_dom_03 = std(dom_03);
d_dom_04 = std(dom_04);
d_dom_05 = std(dom_05);
d_dom_06 = std(dom_06);
d_dom_07 = std(dom_07);
d_dom_08 = std(dom_08);
d_dom_09 = std(dom_09);
d_dom_10 = std(dom_10);
d_dom_11 = std(dom_11);
d_dom_12 = std(dom_12);
d_dom_13 = std(dom_13);
d_dom_14 = std(dom_14);
d_dom_15 = std(dom_15);
d_dom_16 = std(dom_16);
d_dom_17 = std(dom_17);
d_dom_18 = std(dom_18);
d_dom_19 = std(dom_19);
d_dom_20 = std(dom_20);
d_dom_21 = std(dom_21);
d_dom_22 = std(dom_22);
d_dom_23 = std(dom_23);

d_seg_00 = std(seg_00);
d_seg_01 = std(seg_01);
d_seg_02 = std(seg_02);
d_seg_03 = std(seg_03);
d_seg_04 = std(seg_04);
d_seg_05 = std(seg_05);
d_seg_06 = std(seg_06);
d_seg_07 = std(seg_07);
d_seg_08 = std(seg_08);
d_seg_09 = std(seg_09);
d_seg_10 = std(seg_10);
d_seg_11 = std(seg_11);
d_seg_12 = std(seg_12);
d_seg_13 = std(seg_13);
d_seg_14 = std(seg_14);
d_seg_15 = std(seg_15);
d_seg_16 = std(seg_16);
d_seg_17 = std(seg_17);
d_seg_18 = std(seg_18);
d_seg_19 = std(seg_19);
d_seg_20 = std(seg_20);
d_seg_21 = std(seg_21);
d_seg_22 = std(seg_22);
d_seg_23 = std(seg_23);

d_ter_00 = std(ter_00);
d_ter_01 = std(ter_01);
d_ter_02 = std(ter_02);
d_ter_03 = std(ter_03);
d_ter_04 = std(ter_04);
d_ter_05 = std(ter_05);
d_ter_06 = std(ter_06);
d_ter_07 = std(ter_07);
d_ter_08 = std(ter_08);
d_ter_09 = std(ter_09);
d_ter_10 = std(ter_10);
d_ter_11 = std(ter_11);
d_ter_12 = std(ter_12);
d_ter_13 = std(ter_13);
d_ter_14 = std(ter_14);
d_ter_15 = std(ter_15);
d_ter_16 = std(ter_16);
d_ter_17 = std(ter_17);
d_ter_18 = std(ter_18);
d_ter_19 = std(ter_19);
d_ter_20 = std(ter_20);
d_ter_21 = std(ter_21);
d_ter_22 = std(ter_22);
d_ter_23 = std(ter_23);

d_qua_00 = std(qua_00);
d_qua_01 = std(qua_01);
d_qua_02 = std(qua_02);
d_qua_03 = std(qua_03);
d_qua_04 = std(qua_04);
d_qua_05 = std(qua_05);
d_qua_06 = std(qua_06);
d_qua_07 = std(qua_07);
d_qua_08 = std(qua_08);
d_qua_09 = std(qua_09);
d_qua_10 = std(qua_10);
d_qua_11 = std(qua_11);
d_qua_12 = std(qua_12);
d_qua_13 = std(qua_13);
d_qua_14 = std(qua_14);
d_qua_15 = std(qua_15);
d_qua_16 = std(qua_16);
d_qua_17 = std(qua_17);
d_qua_18 = std(qua_18);
d_qua_19 = std(qua_19);
d_qua_20 = std(qua_20);
d_qua_21 = std(qua_21);
d_qua_22 = std(qua_22);
d_qua_23 = std(qua_23);

d_qui_00 = std(qui_00);
d_qui_01 = std(qui_01);
d_qui_02 = std(qui_02);
d_qui_03 = std(qui_03);
d_qui_04 = std(qui_04);
d_qui_05 = std(qui_05);
d_qui_06 = std(qui_06);
d_qui_07 = std(qui_07);
d_qui_08 = std(qui_08);
d_qui_09 = std(qui_09);
d_qui_10 = std(qui_10);
d_qui_11 = std(qui_11);
d_qui_12 = std(qui_12);
d_qui_13 = std(qui_13);
d_qui_14 = std(qui_14);
d_qui_15 = std(qui_15);
d_qui_16 = std(qui_16);
d_qui_17 = std(qui_17);
d_qui_18 = std(qui_18);
d_qui_19 = std(qui_19);
d_qui_20 = std(qui_20);
d_qui_21 = std(qui_21);
d_qui_22 = std(qui_22);
d_qui_23 = std(qui_23);

d_sex_00 = std(sex_00);
d_sex_01 = std(sex_01);
d_sex_02 = std(sex_02);
d_sex_03 = std(sex_03);
d_sex_04 = std(sex_04);
d_sex_05 = std(sex_05);
d_sex_06 = std(sex_06);
d_sex_07 = std(sex_07);
d_sex_08 = std(sex_08);
d_sex_09 = std(sex_09);
d_sex_10 = std(sex_10);
d_sex_11 = std(sex_11);
d_sex_12 = std(sex_12);
d_sex_13 = std(sex_13);
d_sex_14 = std(sex_14);
d_sex_15 = std(sex_15);
d_sex_16 = std(sex_16);
d_sex_17 = std(sex_17);
d_sex_18 = std(sex_18);
d_sex_19 = std(sex_19);
d_sex_20 = std(sex_20);
d_sex_21 = std(sex_21);
d_sex_22 = std(sex_22);
d_sex_23 = std(sex_23);

d_sab_00 = std(sab_00);
d_sab_01 = std(sab_01);
d_sab_02 = std(sab_02);
d_sab_03 = std(sab_03);
d_sab_04 = std(sab_04);
d_sab_05 = std(sab_05);
d_sab_06 = std(sab_06);
d_sab_07 = std(sab_07);
d_sab_08 = std(sab_08);
d_sab_09 = std(sab_09);
d_sab_10 = std(sab_10);
d_sab_11 = std(sab_11);
d_sab_12 = std(sab_12);
d_sab_13 = std(sab_13);
d_sab_14 = std(sab_14);
d_sab_15 = std(sab_15);
d_sab_16 = std(sab_16);
d_sab_17 = std(sab_17);
d_sab_18 = std(sab_18);
d_sab_19 = std(sab_19);
d_sab_20 = std(sab_20);
d_sab_21 = std(sab_21);
d_sab_22 = std(sab_22);
d_sab_23 = std(sab_23);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calcula quanto varia cada hora
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
v_dom_00 = max(dom_00) - min(dom_00);
v_dom_01 = max(dom_01) - min(dom_01);
v_dom_02 = max(dom_02) - min(dom_02);
v_dom_03 = max(dom_03) - min(dom_03);
v_dom_04 = max(dom_04) - min(dom_04);
v_dom_05 = max(dom_05) - min(dom_05);
v_dom_06 = max(dom_06) - min(dom_06);
v_dom_07 = max(dom_07) - min(dom_07);
v_dom_08 = max(dom_08) - min(dom_08);
v_dom_09 = max(dom_09) - min(dom_09);
v_dom_10 = max(dom_10) - min(dom_10);
v_dom_11 = max(dom_11) - min(dom_11);
v_dom_12 = max(dom_12) - min(dom_12);
v_dom_13 = max(dom_13) - min(dom_13);
v_dom_14 = max(dom_14) - min(dom_14);
v_dom_15 = max(dom_15) - min(dom_15);
v_dom_16 = max(dom_16) - min(dom_16);
v_dom_17 = max(dom_17) - min(dom_17);
v_dom_18 = max(dom_18) - min(dom_18);
v_dom_19 = max(dom_19) - min(dom_19);
v_dom_20 = max(dom_20) - min(dom_20);
v_dom_21 = max(dom_21) - min(dom_21);
v_dom_22 = max(dom_22) - min(dom_22);
v_dom_23 = max(dom_23) - min(dom_23);

v_seg_00 = max(seg_00) - min(seg_00);
v_seg_01 = max(seg_01) - min(seg_01);
v_seg_02 = max(seg_02) - min(seg_02);
v_seg_03 = max(seg_03) - min(seg_03);
v_seg_04 = max(seg_04) - min(seg_04);
v_seg_05 = max(seg_05) - min(seg_05);
v_seg_06 = max(seg_06) - min(seg_06);
v_seg_07 = max(seg_07) - min(seg_07);
v_seg_08 = max(seg_08) - min(seg_08);
v_seg_09 = max(seg_09) - min(seg_09);
v_seg_10 = max(seg_10) - min(seg_10);
v_seg_11 = max(seg_11) - min(seg_11);
v_seg_12 = max(seg_12) - min(seg_12);
v_seg_13 = max(seg_13) - min(seg_13);
v_seg_14 = max(seg_14) - min(seg_14);
v_seg_15 = max(seg_15) - min(seg_15);
v_seg_16 = max(seg_16) - min(seg_16);
v_seg_17 = max(seg_17) - min(seg_17);
v_seg_18 = max(seg_18) - min(seg_18);
v_seg_19 = max(seg_19) - min(seg_19);
v_seg_20 = max(seg_20) - min(seg_20);
v_seg_21 = max(seg_21) - min(seg_21);
v_seg_22 = max(seg_22) - min(seg_22);
v_seg_23 = max(seg_23) - min(seg_23);

v_ter_00 = max(ter_00) - min(ter_00);
v_ter_01 = max(ter_01) - min(ter_01);
v_ter_02 = max(ter_02) - min(ter_02);
v_ter_03 = max(ter_03) - min(ter_03);
v_ter_04 = max(ter_04) - min(ter_04);
v_ter_05 = max(ter_05) - min(ter_05);
v_ter_06 = max(ter_06) - min(ter_06);
v_ter_07 = max(ter_07) - min(ter_07);
v_ter_08 = max(ter_08) - min(ter_08);
v_ter_09 = max(ter_09) - min(ter_09);
v_ter_10 = max(ter_10) - min(ter_10);
v_ter_11 = max(ter_11) - min(ter_11);
v_ter_12 = max(ter_12) - min(ter_12);
v_ter_13 = max(ter_13) - min(ter_13);
v_ter_14 = max(ter_14) - min(ter_14);
v_ter_15 = max(ter_15) - min(ter_15);
v_ter_16 = max(ter_16) - min(ter_16);
v_ter_17 = max(ter_17) - min(ter_17);
v_ter_18 = max(ter_18) - min(ter_18);
v_ter_19 = max(ter_19) - min(ter_19);
v_ter_20 = max(ter_20) - min(ter_20);
v_ter_21 = max(ter_21) - min(ter_21);
v_ter_22 = max(ter_22) - min(ter_22);
v_ter_23 = max(ter_23) - min(ter_23);

v_qua_00 = max(qua_00) - min(qua_00);
v_qua_01 = max(qua_01) - min(qua_01);
v_qua_02 = max(qua_02) - min(qua_02);
v_qua_03 = max(qua_03) - min(qua_03);
v_qua_04 = max(qua_04) - min(qua_04);
v_qua_05 = max(qua_05) - min(qua_05);
v_qua_06 = max(qua_06) - min(qua_06);
v_qua_07 = max(qua_07) - min(qua_07);
v_qua_08 = max(qua_08) - min(qua_08);
v_qua_09 = max(qua_09) - min(qua_09);
v_qua_10 = max(qua_10) - min(qua_10);
v_qua_11 = max(qua_11) - min(qua_11);
v_qua_12 = max(qua_12) - min(qua_12);
v_qua_13 = max(qua_13) - min(qua_13);
v_qua_14 = max(qua_14) - min(qua_14);
v_qua_15 = max(qua_15) - min(qua_15);
v_qua_16 = max(qua_16) - min(qua_16);
v_qua_17 = max(qua_17) - min(qua_17);
v_qua_18 = max(qua_18) - min(qua_18);
v_qua_19 = max(qua_19) - min(qua_19);
v_qua_20 = max(qua_20) - min(qua_20);
v_qua_21 = max(qua_21) - min(qua_21);
v_qua_22 = max(qua_22) - min(qua_22);
v_qua_23 = max(qua_23) - min(qua_23);

v_qui_00 = max(qui_00) - min(qui_00);
v_qui_01 = max(qui_01) - min(qui_01);
v_qui_02 = max(qui_02) - min(qui_02);
v_qui_03 = max(qui_03) - min(qui_03);
v_qui_04 = max(qui_04) - min(qui_04);
v_qui_05 = max(qui_05) - min(qui_05);
v_qui_06 = max(qui_06) - min(qui_06);
v_qui_07 = max(qui_07) - min(qui_07);
v_qui_08 = max(qui_08) - min(qui_08);
v_qui_09 = max(qui_09) - min(qui_09);
v_qui_10 = max(qui_10) - min(qui_10);
v_qui_11 = max(qui_11) - min(qui_11);
v_qui_12 = max(qui_12) - min(qui_12);
v_qui_13 = max(qui_13) - min(qui_13);
v_qui_14 = max(qui_14) - min(qui_14);
v_qui_15 = max(qui_15) - min(qui_15);
v_qui_16 = max(qui_16) - min(qui_16);
v_qui_17 = max(qui_17) - min(qui_17);
v_qui_18 = max(qui_18) - min(qui_18);
v_qui_19 = max(qui_19) - min(qui_19);
v_qui_20 = max(qui_20) - min(qui_20);
v_qui_21 = max(qui_21) - min(qui_21);
v_qui_22 = max(qui_22) - min(qui_22);
v_qui_23 = max(qui_23) - min(qui_23);

v_sex_00 = max(sex_00) - min(sex_00);
v_sex_01 = max(sex_01) - min(sex_01);
v_sex_02 = max(sex_02) - min(sex_02);
v_sex_03 = max(sex_03) - min(sex_03);
v_sex_04 = max(sex_04) - min(sex_04);
v_sex_05 = max(sex_05) - min(sex_05);
v_sex_06 = max(sex_06) - min(sex_06);
v_sex_07 = max(sex_07) - min(sex_07);
v_sex_08 = max(sex_08) - min(sex_08);
v_sex_09 = max(sex_09) - min(sex_09);
v_sex_10 = max(sex_10) - min(sex_10);
v_sex_11 = max(sex_11) - min(sex_11);
v_sex_12 = max(sex_12) - min(sex_12);
v_sex_13 = max(sex_13) - min(sex_13);
v_sex_14 = max(sex_14) - min(sex_14);
v_sex_15 = max(sex_15) - min(sex_15);
v_sex_16 = max(sex_16) - min(sex_16);
v_sex_17 = max(sex_17) - min(sex_17);
v_sex_18 = max(sex_18) - min(sex_18);
v_sex_19 = max(sex_19) - min(sex_19);
v_sex_20 = max(sex_20) - min(sex_20);
v_sex_21 = max(sex_21) - min(sex_21);
v_sex_22 = max(sex_22) - min(sex_22);
v_sex_23 = max(sex_23) - min(sex_23);

v_sab_00 = max(sab_00) - min(sab_00);
v_sab_01 = max(sab_01) - min(sab_01);
v_sab_02 = max(sab_02) - min(sab_02);
v_sab_03 = max(sab_03) - min(sab_03);
v_sab_04 = max(sab_04) - min(sab_04);
v_sab_05 = max(sab_05) - min(sab_05);
v_sab_06 = max(sab_06) - min(sab_06);
v_sab_07 = max(sab_07) - min(sab_07);
v_sab_08 = max(sab_08) - min(sab_08);
v_sab_09 = max(sab_09) - min(sab_09);
v_sab_10 = max(sab_10) - min(sab_10);
v_sab_11 = max(sab_11) - min(sab_11);
v_sab_12 = max(sab_12) - min(sab_12);
v_sab_13 = max(sab_13) - min(sab_13);
v_sab_14 = max(sab_14) - min(sab_14);
v_sab_15 = max(sab_15) - min(sab_15);
v_sab_16 = max(sab_16) - min(sab_16);
v_sab_17 = max(sab_17) - min(sab_17);
v_sab_18 = max(sab_18) - min(sab_18);
v_sab_19 = max(sab_19) - min(sab_19);
v_sab_20 = max(sab_20) - min(sab_20);
v_sab_21 = max(sab_21) - min(sab_21);
v_sab_22 = max(sab_22) - min(sab_22);
v_sab_23 = max(sab_23) - min(sab_23);

%%%%%%%
%Matriz 
%%%%%%%
medias = [m_dom_00 m_seg_00 m_ter_00 m_qua_00 m_qui_00 m_sex_00 m_sab_00; 
    m_dom_01 m_seg_01 m_ter_01 m_qua_01 m_qui_01 m_sex_01 m_sab_01; 
    m_dom_02 m_seg_02 m_ter_02 m_qua_02 m_qui_02 m_sex_02 m_sab_02; 
    m_dom_03 m_seg_03 m_ter_03 m_qua_03 m_qui_03 m_sex_03 m_sab_03; 
    m_dom_04 m_seg_04 m_ter_04 m_qua_04 m_qui_04 m_sex_04 m_sab_04; 
    m_dom_05 m_seg_05 m_ter_05 m_qua_05 m_qui_05 m_sex_05 m_sab_05; 
    m_dom_06 m_seg_06 m_ter_06 m_qua_06 m_qui_06 m_sex_06 m_sab_06; 
    m_dom_07 m_seg_07 m_ter_07 m_qua_07 m_qui_07 m_sex_07 m_sab_07;
    m_dom_08 m_seg_08 m_ter_08 m_qua_08 m_qui_08 m_sex_08 m_sab_08; 
    m_dom_09 m_seg_09 m_ter_09 m_qua_09 m_qui_09 m_sex_09 m_sab_09; 
    m_dom_10 m_seg_10 m_ter_10 m_qua_10 m_qui_10 m_sex_10 m_sab_10; 
    m_dom_11 m_seg_11 m_ter_11 m_qua_11 m_qui_11 m_sex_11 m_sab_11; 
    m_dom_12 m_seg_12 m_ter_12 m_qua_12 m_qui_12 m_sex_12 m_sab_12; 
    m_dom_13 m_seg_13 m_ter_13 m_qua_13 m_qui_13 m_sex_13 m_sab_13; 
    m_dom_14 m_seg_14 m_ter_14 m_qua_14 m_qui_14 m_sex_14 m_sab_14; 
    m_dom_15 m_seg_15 m_ter_15 m_qua_15 m_qui_15 m_sex_15 m_sab_15; 
    m_dom_16 m_seg_16 m_ter_16 m_qua_16 m_qui_16 m_sex_16 m_sab_16;
    m_dom_17 m_seg_17 m_ter_17 m_qua_17 m_qui_17 m_sex_17 m_sab_17; 
    m_dom_18 m_seg_18 m_ter_18 m_qua_18 m_qui_18 m_sex_18 m_sab_18; 
    m_dom_19 m_seg_19 m_ter_19 m_qua_19 m_qui_19 m_sex_19 m_sab_19; 
    m_dom_20 m_seg_20 m_ter_20 m_qua_20 m_qui_20 m_sex_20 m_sab_20; 
    m_dom_21 m_seg_21 m_ter_21 m_qua_21 m_qui_21 m_sex_21 m_sab_21; 
    m_dom_22 m_seg_22 m_ter_22 m_qua_22 m_qui_22 m_sex_22 m_sab_22; 
    m_dom_23 m_seg_23 m_ter_23 m_qua_23 m_qui_23 m_sex_23 m_sab_23];

varia = [v_dom_00 v_seg_00 v_ter_00 v_qua_00 v_qui_00 v_sex_00 v_sab_00; 
    v_dom_01 v_seg_01 v_ter_01 v_qua_01 v_qui_01 v_sex_01 v_sab_01; 
    v_dom_02 v_seg_02 v_ter_02 v_qua_02 v_qui_02 v_sex_02 v_sab_02; 
    v_dom_03 v_seg_03 v_ter_03 v_qua_03 v_qui_03 v_sex_03 v_sab_03; 
    v_dom_04 v_seg_04 v_ter_04 v_qua_04 v_qui_04 v_sex_04 v_sab_04; 
    v_dom_05 v_seg_05 v_ter_05 v_qua_05 v_qui_05 v_sex_05 v_sab_05; 
    v_dom_06 v_seg_06 v_ter_06 v_qua_06 v_qui_06 v_sex_06 v_sab_06; 
    v_dom_07 v_seg_07 v_ter_07 v_qua_07 v_qui_07 v_sex_07 v_sab_07;
    v_dom_08 v_seg_08 v_ter_08 v_qua_08 v_qui_08 v_sex_08 v_sab_08; 
    v_dom_09 v_seg_09 v_ter_09 v_qua_09 v_qui_09 v_sex_09 v_sab_09; 
    v_dom_10 v_seg_10 v_ter_10 v_qua_10 v_qui_10 v_sex_10 v_sab_10; 
    v_dom_11 v_seg_11 v_ter_11 v_qua_11 v_qui_11 v_sex_11 v_sab_11; 
    v_dom_12 v_seg_12 v_ter_12 v_qua_12 v_qui_12 v_sex_12 v_sab_12; 
    v_dom_13 v_seg_13 v_ter_13 v_qua_13 v_qui_13 v_sex_13 v_sab_13; 
    v_dom_14 v_seg_14 v_ter_14 v_qua_14 v_qui_14 v_sex_14 v_sab_14; 
    v_dom_15 v_seg_15 v_ter_15 v_qua_15 v_qui_15 v_sex_15 v_sab_15; 
    v_dom_16 v_seg_16 v_ter_16 v_qua_16 v_qui_16 v_sex_16 v_sab_16;
    v_dom_17 v_seg_17 v_ter_17 v_qua_17 v_qui_17 v_sex_17 v_sab_17; 
    v_dom_18 v_seg_18 v_ter_18 v_qua_18 v_qui_18 v_sex_18 v_sab_18; 
    v_dom_19 v_seg_19 v_ter_19 v_qua_19 v_qui_19 v_sex_19 v_sab_19; 
    v_dom_20 v_seg_20 v_ter_20 v_qua_20 v_qui_20 v_sex_20 v_sab_20; 
    v_dom_21 v_seg_21 v_ter_21 v_qua_21 v_qui_21 v_sex_21 v_sab_21; 
    v_dom_22 v_seg_22 v_ter_22 v_qua_22 v_qui_22 v_sex_22 v_sab_22; 
    v_dom_23 v_seg_23 v_ter_23 v_qua_23 v_qui_23 v_sex_23 v_sab_23];

desvio = [d_dom_00 d_seg_00 d_ter_00 d_qua_00 d_qui_00 d_sex_00 d_sab_00; 
    d_dom_01 d_seg_01 d_ter_01 d_qua_01 d_qui_01 d_sex_01 d_sab_01; 
    d_dom_02 d_seg_02 d_ter_02 d_qua_02 d_qui_02 d_sex_02 d_sab_02; 
    d_dom_03 d_seg_03 d_ter_03 d_qua_03 d_qui_03 d_sex_03 d_sab_03; 
    d_dom_04 d_seg_04 d_ter_04 d_qua_04 d_qui_04 d_sex_04 d_sab_04; 
    d_dom_05 d_seg_05 d_ter_05 d_qua_05 d_qui_05 d_sex_05 d_sab_05; 
    d_dom_06 d_seg_06 d_ter_06 d_qua_06 d_qui_06 d_sex_06 d_sab_06; 
    d_dom_07 d_seg_07 d_ter_07 d_qua_07 d_qui_07 d_sex_07 d_sab_07;
    d_dom_08 d_seg_08 d_ter_08 d_qua_08 d_qui_08 d_sex_08 d_sab_08; 
    d_dom_09 d_seg_09 d_ter_09 d_qua_09 d_qui_09 d_sex_09 d_sab_09; 
    d_dom_10 d_seg_10 d_ter_10 d_qua_10 d_qui_10 d_sex_10 d_sab_10; 
    d_dom_11 d_seg_11 d_ter_11 d_qua_11 d_qui_11 d_sex_11 d_sab_11; 
    d_dom_12 d_seg_12 d_ter_12 d_qua_12 d_qui_12 d_sex_12 d_sab_12; 
    d_dom_13 d_seg_13 d_ter_13 d_qua_13 d_qui_13 d_sex_13 d_sab_13; 
    d_dom_14 d_seg_14 d_ter_14 d_qua_14 d_qui_14 d_sex_14 d_sab_14; 
    d_dom_15 d_seg_15 d_ter_15 d_qua_15 d_qui_15 d_sex_15 d_sab_15; 
    d_dom_16 d_seg_16 d_ter_16 d_qua_16 d_qui_16 d_sex_16 d_sab_16;
    d_dom_17 d_seg_17 d_ter_17 d_qua_17 d_qui_17 d_sex_17 d_sab_17; 
    d_dom_18 d_seg_18 d_ter_18 d_qua_18 d_qui_18 d_sex_18 d_sab_18; 
    d_dom_19 d_seg_19 d_ter_19 d_qua_19 d_qui_19 d_sex_19 d_sab_19; 
    d_dom_20 d_seg_20 d_ter_20 d_qua_20 d_qui_20 d_sex_20 d_sab_20; 
    d_dom_21 d_seg_21 d_ter_21 d_qua_21 d_qui_21 d_sex_21 d_sab_21; 
    d_dom_22 d_seg_22 d_ter_22 d_qua_22 d_qui_22 d_sex_22 d_sab_22; 
    d_dom_23 d_seg_23 d_ter_23 d_qua_23 d_qui_23 d_sex_23 d_sab_23];

horas = [00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23];
dias = [1 2 3 4 5 6 7];

%%%%%%%
%plot
%%%%%%%
% figure;
% hold on;
% title('Media de tempo (em segundos) - insulina no Uniprot');
% contourf(dias,horas,medias);
% ylim([0 23]);
% xlabel('Dias');
% ylabel('Horas');
% colorbar;
% 
% figure;
% hold on;
% title('Varia��o de tempo (em segundos) - insulina no Uniprot');
% contourf(dias,horas,varia);
% ylim([0 23]);
% xlabel('Dias');
% ylabel('Horas');
% colorbar;

figure;
hold on;
title('Desvio padr�o (em segundos) - insulina no Uniprot');
contourf(dias,horas,varia);
ylim([0 23]);
xlabel('Dias');
ylabel('Horas');
colorbar;