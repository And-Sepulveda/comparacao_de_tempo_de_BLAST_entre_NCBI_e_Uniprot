%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Avalia a curtosis dos dados da prote�na de canal de s�dio
%% em cada hora ao passar no algoritmo Blast do site Uniprot
%%
%% @Autor: Anderson Ferreira Sepulveda
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

arquivo = 'Uniprot - Na+.xlsx';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pega os valores de de tempo do arquivo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dom_00 = xlsread(arquivo,'G1101:G1106');
dom_01 = xlsread(arquivo,'G1201:G1206');
dom_02 = xlsread(arquivo,'G1301:G1305');
dom_03 = xlsread(arquivo,'G1312:G1313');
dom_04 = xlsread(arquivo,'G1320:G1321');
dom_05 = xlsread(arquivo,'G1331:G1332');
dom_06 = xlsread(arquivo,'G1401:G1405');
dom_07 = xlsread(arquivo,'G1501:G1505');
dom_08 = xlsread(arquivo,'G1601:G1606');
dom_09 = xlsread(arquivo,'G1701:G1706');
dom_10 = xlsread(arquivo,'G1801:G1808');
dom_11 = xlsread(arquivo,'G1901:G1906');
dom_12 = xlsread(arquivo,'G2001:G2006');
dom_13 = xlsread(arquivo,'G2:G7');
dom_14 = xlsread(arquivo,'G103:G108');
dom_15 = xlsread(arquivo,'G202:G207');
dom_16 = xlsread(arquivo,'G301:G306');
dom_17 = xlsread(arquivo,'G402:G407');
dom_18 = xlsread(arquivo,'G502:G508');
dom_19 = xlsread(arquivo,'G601:G606');
dom_20 = xlsread(arquivo,'G701:G708');
dom_21 = xlsread(arquivo,'G801:G806');
dom_22 = xlsread(arquivo,'G901:G908');
dom_23 = xlsread(arquivo,'G1001:G1007');

seg_00 = xlsread(arquivo,'I1101:I1106');
seg_01 = xlsread(arquivo,'I1201:I1206');
seg_02 = xlsread(arquivo,'I1301:I1305');
seg_03 = xlsread(arquivo,'I1312:I1313');
seg_04 = xlsread(arquivo,'I1320:I1321');
seg_05 = xlsread(arquivo,'I1331:I1332');
seg_06 = xlsread(arquivo,'I1401:I1405');
seg_07 = xlsread(arquivo,'I1501:I1505');
seg_08 = xlsread(arquivo,'I1601:I1606');
seg_09 = xlsread(arquivo,'I1701:I1706');
seg_10 = xlsread(arquivo,'I1801:I1804');
seg_11 = xlsread(arquivo,'I1901:I1905');
seg_12 = xlsread(arquivo,'I2001:I2005');
seg_13 = xlsread(arquivo,'I2:I7');
seg_14 = xlsread(arquivo,'I103:I108');
seg_15 = xlsread(arquivo,'I202:I207');
seg_16 = xlsread(arquivo,'I301:I304');
seg_17 = xlsread(arquivo,'I402:I407');
seg_18 = xlsread(arquivo,'I502:I506');
seg_19 = xlsread(arquivo,'I601:I606');
seg_20 = xlsread(arquivo,'I701:I706');
seg_21 = xlsread(arquivo,'I801:I806');
seg_22 = xlsread(arquivo,'I901:I904');
seg_23 = xlsread(arquivo,'I1001:I1006');

ter_00 = xlsread(arquivo,'K1101:K1106');
ter_01 = xlsread(arquivo,'K1201:K1206');
ter_02 = xlsread(arquivo,'K1301:K1305');
ter_03 = xlsread(arquivo,'K1312:K1313');
ter_04 = xlsread(arquivo,'K1320:K1321');
ter_05 = xlsread(arquivo,'K1331:K1332');
ter_06 = xlsread(arquivo,'K1401:K1406');
ter_07 = xlsread(arquivo,'K1501:K1506');
ter_08 = xlsread(arquivo,'K1601:K1606');
ter_09 = xlsread(arquivo,'K1701:K1706');
ter_10 = xlsread(arquivo,'K1801:K1804');
ter_11 = xlsread(arquivo,'K1901:K1906');
ter_12 = xlsread(arquivo,'K2001:K2005');
ter_13 = xlsread(arquivo,'K2:K7');
ter_14 = xlsread(arquivo,'K103:K108');
ter_15 = xlsread(arquivo,'K202:K207');
ter_16 = xlsread(arquivo,'K301:K306');
ter_17 = xlsread(arquivo,'K402:K406');
ter_18 = xlsread(arquivo,'K502:K507');
ter_19 = xlsread(arquivo,'K601:K606');
ter_20 = xlsread(arquivo,'K701:K705');
ter_21 = xlsread(arquivo,'K801:K805');
ter_22 = xlsread(arquivo,'K901:K906');
ter_23 = xlsread(arquivo,'K1001:K1006');

qua_00 = xlsread(arquivo,'M1101:M1106');
qua_01 = xlsread(arquivo,'M1201:M1206');
qua_02 = xlsread(arquivo,'M1301:M1305');
qua_03 = xlsread(arquivo,'M1312:M1313');
qua_04 = xlsread(arquivo,'M1320:M1321');
qua_05 = xlsread(arquivo,'M1331:M1332');
qua_06 = xlsread(arquivo,'M1401:M1404');
qua_07 = xlsread(arquivo,'M1501:M1505');
qua_08 = xlsread(arquivo,'M1601:M1605');
qua_09 = xlsread(arquivo,'M1701:M1706');
qua_10 = xlsread(arquivo,'M1801:M1806');
qua_11 = xlsread(arquivo,'M1901:M1906');
qua_12 = xlsread(arquivo,'M2001:M2006');
qua_13 = xlsread(arquivo,'M2:M7');
qua_14 = xlsread(arquivo,'M103:M108');
qua_15 = xlsread(arquivo,'M202:M207');
qua_16 = xlsread(arquivo,'M301:M306');
qua_17 = xlsread(arquivo,'M402:M406');
qua_18 = xlsread(arquivo,'M502:M507');
qua_19 = xlsread(arquivo,'M601:M606');
qua_20 = xlsread(arquivo,'M701:M708');
qua_21 = xlsread(arquivo,'M801:M808');
qua_22 = xlsread(arquivo,'M901:M906');
qua_23 = xlsread(arquivo,'M1001:M1006');

qui_00 = xlsread(arquivo,'A1101:A1105');
qui_01 = xlsread(arquivo,'A1201:A1205');
qui_02 = xlsread(arquivo,'A1301:A1305');
qui_03 = xlsread(arquivo,'A1312:A1313');
qui_04 = xlsread(arquivo,'A1320:A1321');
qui_05 = xlsread(arquivo,'A1331:A1332');
qui_06 = xlsread(arquivo,'A1401:A1404');
qui_07 = xlsread(arquivo,'A1501:A1506');
qui_08 = xlsread(arquivo,'A1601:A1606');
qui_09 = xlsread(arquivo,'A1701:A1706');
qui_10 = xlsread(arquivo,'A1801:A1806');
qui_11 = xlsread(arquivo,'A1901:A1906');
qui_12 = xlsread(arquivo,'A2001:A2006');
qui_13 = xlsread(arquivo,'A2:A7');
qui_14 = xlsread(arquivo,'A103:A108');
qui_15 = xlsread(arquivo,'A202:A207');
qui_16 = xlsread(arquivo,'A301:A306');
qui_17 = xlsread(arquivo,'A402:A407');
qui_18 = xlsread(arquivo,'A501:A507');
qui_19 = xlsread(arquivo,'A601:A606');
qui_20 = xlsread(arquivo,'A701:A706');
qui_21 = xlsread(arquivo,'A801:A806');
qui_22 = xlsread(arquivo,'A901:A906');
qui_23 = xlsread(arquivo,'A1001:A1006');

sex_00 = xlsread(arquivo,'C1101:C1106');
sex_01 = xlsread(arquivo,'C1201:C1206');
sex_02 = xlsread(arquivo,'C1301:C1305');
sex_03 = xlsread(arquivo,'C1312:C1313');
sex_04 = xlsread(arquivo,'C1320:C1321');
sex_05 = xlsread(arquivo,'C1331:C1332');
sex_06 = xlsread(arquivo,'C1401:C1404');
sex_07 = xlsread(arquivo,'C1501:C1506');
sex_08 = xlsread(arquivo,'C1601:C1606');
sex_09 = xlsread(arquivo,'C1701:C1706');
sex_10 = xlsread(arquivo,'C1801:C1806');
sex_11 = xlsread(arquivo,'C1901:C1906');
sex_12 = xlsread(arquivo,'C2001:C2006');
sex_13 = xlsread(arquivo,'C2:C7');
sex_14 = xlsread(arquivo,'C103:C108');
sex_15 = xlsread(arquivo,'C202:C207');
sex_16 = xlsread(arquivo,'C301:C305');
sex_17 = xlsread(arquivo,'C402:C407');
sex_18 = xlsread(arquivo,'C502:C507');
sex_19 = xlsread(arquivo,'C601:C606');
sex_20 = xlsread(arquivo,'C701:C706');
sex_21 = xlsread(arquivo,'C801:C806');
sex_22 = xlsread(arquivo,'C901:C906');
sex_23 = xlsread(arquivo,'C1001:C1006');

sab_00 = xlsread(arquivo,'E1101:E1106');
sab_01 = xlsread(arquivo,'E1201:E1206');
sab_02 = xlsread(arquivo,'E1301:E1305');
sab_03 = xlsread(arquivo,'E1312:E1313');
sab_04 = xlsread(arquivo,'E1320:E1321');
sab_05 = xlsread(arquivo,'E1331:E1332');
sab_06 = xlsread(arquivo,'E1401:E1405');
sab_07 = xlsread(arquivo,'E1501:E1505');
sab_08 = xlsread(arquivo,'E1601:E1610');
sab_09 = xlsread(arquivo,'E1701:E1706');
sab_10 = xlsread(arquivo,'E1801:E1808');
sab_11 = xlsread(arquivo,'E1901:E1906');
sab_12 = xlsread(arquivo,'E2001:E2005');
sab_13 = xlsread(arquivo,'E2:E7');
sab_14 = xlsread(arquivo,'E103:E108');
sab_15 = xlsread(arquivo,'E202:E207');
sab_16 = xlsread(arquivo,'E301:E308');
sab_17 = xlsread(arquivo,'E402:E408');
sab_18 = xlsread(arquivo,'E502:E508');
sab_19 = xlsread(arquivo,'E601:E608');
sab_20 = xlsread(arquivo,'E701:E708');
sab_21 = xlsread(arquivo,'E801:E806');
sab_22 = xlsread(arquivo,'E901:E906');
sab_23 = xlsread(arquivo,'E1001:E1006');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calcula a curtosis de cada hora
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m_dom_00 = kurtosis(dom_00);
m_dom_01 = kurtosis(dom_01);
m_dom_02 = kurtosis(dom_02);
m_dom_03 = kurtosis(dom_03);
m_dom_04 = kurtosis(dom_04);
m_dom_05 = kurtosis(dom_05);
m_dom_06 = kurtosis(dom_06);
m_dom_07 = kurtosis(dom_07);
m_dom_08 = kurtosis(dom_08);
m_dom_09 = kurtosis(dom_09);
m_dom_10 = kurtosis(dom_10);
m_dom_11 = kurtosis(dom_11);
m_dom_12 = kurtosis(dom_12);
m_dom_13 = kurtosis(dom_13);
m_dom_14 = kurtosis(dom_14);
m_dom_15 = kurtosis(dom_15);
m_dom_16 = kurtosis(dom_16);
m_dom_17 = kurtosis(dom_17);
m_dom_18 = kurtosis(dom_18);
m_dom_19 = kurtosis(dom_19);
m_dom_20 = kurtosis(dom_20);
m_dom_21 = kurtosis(dom_21);
m_dom_22 = kurtosis(dom_22);
m_dom_23 = kurtosis(dom_23);

m_seg_00 = kurtosis(seg_00);
m_seg_01 = kurtosis(seg_01);
m_seg_02 = kurtosis(seg_02);
m_seg_03 = kurtosis(seg_03);
m_seg_04 = kurtosis(seg_04);
m_seg_05 = kurtosis(seg_05);
m_seg_06 = kurtosis(seg_06);
m_seg_07 = kurtosis(seg_07);
m_seg_08 = kurtosis(seg_08);
m_seg_09 = kurtosis(seg_09);
m_seg_10 = kurtosis(seg_10);
m_seg_11 = kurtosis(seg_11);
m_seg_12 = kurtosis(seg_12);
m_seg_13 = kurtosis(seg_13);
m_seg_14 = kurtosis(seg_14);
m_seg_15 = kurtosis(seg_15);
m_seg_16 = kurtosis(seg_16);
m_seg_17 = kurtosis(seg_17);
m_seg_18 = kurtosis(seg_18);
m_seg_19 = kurtosis(seg_19);
m_seg_20 = kurtosis(seg_20);
m_seg_21 = kurtosis(seg_21);
m_seg_22 = kurtosis(seg_22);
m_seg_23 = kurtosis(seg_23);

m_ter_00 = kurtosis(ter_00);
m_ter_01 = kurtosis(ter_01);
m_ter_02 = kurtosis(ter_02);
m_ter_03 = kurtosis(ter_03);
m_ter_04 = kurtosis(ter_04);
m_ter_05 = kurtosis(ter_05);
m_ter_06 = kurtosis(ter_06);
m_ter_07 = kurtosis(ter_07);
m_ter_08 = kurtosis(ter_08);
m_ter_09 = kurtosis(ter_09);
m_ter_10 = kurtosis(ter_10);
m_ter_11 = kurtosis(ter_11);
m_ter_12 = kurtosis(ter_12);
m_ter_13 = kurtosis(ter_13);
m_ter_14 = kurtosis(ter_14);
m_ter_15 = kurtosis(ter_15);
m_ter_16 = kurtosis(ter_16);
m_ter_17 = kurtosis(ter_17);
m_ter_18 = kurtosis(ter_18);
m_ter_19 = kurtosis(ter_19);
m_ter_20 = kurtosis(ter_20);
m_ter_21 = kurtosis(ter_21);
m_ter_22 = kurtosis(ter_22);
m_ter_23 = kurtosis(ter_23);

m_qua_00 = kurtosis(qua_00);
m_qua_01 = kurtosis(qua_01);
m_qua_02 = kurtosis(qua_02);
m_qua_03 = kurtosis(qua_03);
m_qua_04 = kurtosis(qua_04);
m_qua_05 = kurtosis(qua_05);
m_qua_06 = kurtosis(qua_06);
m_qua_07 = kurtosis(qua_07);
m_qua_08 = kurtosis(qua_08);
m_qua_09 = kurtosis(qua_09);
m_qua_10 = kurtosis(qua_10);
m_qua_11 = kurtosis(qua_11);
m_qua_12 = kurtosis(qua_12);
m_qua_13 = kurtosis(qua_13);
m_qua_14 = kurtosis(qua_14);
m_qua_15 = kurtosis(qua_15);
m_qua_16 = kurtosis(qua_16);
m_qua_17 = kurtosis(qua_17);
m_qua_18 = kurtosis(qua_18);
m_qua_19 = kurtosis(qua_19);
m_qua_20 = kurtosis(qua_20);
m_qua_21 = kurtosis(qua_21);
m_qua_22 = kurtosis(qua_22);
m_qua_23 = kurtosis(qua_23);

m_qui_00 = kurtosis(qui_00);
m_qui_01 = kurtosis(qui_01);
m_qui_02 = kurtosis(qui_02);
m_qui_03 = kurtosis(qui_03);
m_qui_04 = kurtosis(qui_04);
m_qui_05 = kurtosis(qui_05);
m_qui_06 = kurtosis(qui_06);
m_qui_07 = kurtosis(qui_07);
m_qui_08 = kurtosis(qui_08);
m_qui_09 = kurtosis(qui_09);
m_qui_10 = kurtosis(qui_10);
m_qui_11 = kurtosis(qui_11);
m_qui_12 = kurtosis(qui_12);
m_qui_13 = kurtosis(qui_13);
m_qui_14 = kurtosis(qui_14);
m_qui_15 = kurtosis(qui_15);
m_qui_16 = kurtosis(qui_16);
m_qui_17 = kurtosis(qui_17);
m_qui_18 = kurtosis(qui_18);
m_qui_19 = kurtosis(qui_19);
m_qui_20 = kurtosis(qui_20);
m_qui_21 = kurtosis(qui_21);
m_qui_22 = kurtosis(qui_22);
m_qui_23 = kurtosis(qui_23);

m_sex_00 = kurtosis(sex_00);
m_sex_01 = kurtosis(sex_01);
m_sex_02 = kurtosis(sex_02);
m_sex_03 = kurtosis(sex_03);
m_sex_04 = kurtosis(sex_04);
m_sex_05 = kurtosis(sex_05);
m_sex_06 = kurtosis(sex_06);
m_sex_07 = kurtosis(sex_07);
m_sex_08 = kurtosis(sex_08);
m_sex_09 = kurtosis(sex_09);
m_sex_10 = kurtosis(sex_10);
m_sex_11 = kurtosis(sex_11);
m_sex_12 = kurtosis(sex_12);
m_sex_13 = kurtosis(sex_13);
m_sex_14 = kurtosis(sex_14);
m_sex_15 = kurtosis(sex_15);
m_sex_16 = kurtosis(sex_16);
m_sex_17 = kurtosis(sex_17);
m_sex_18 = kurtosis(sex_18);
m_sex_19 = kurtosis(sex_19);
m_sex_20 = kurtosis(sex_20);
m_sex_21 = kurtosis(sex_21);
m_sex_22 = kurtosis(sex_22);
m_sex_23 = kurtosis(sex_23);

m_sab_00 = kurtosis(sab_00);
m_sab_01 = kurtosis(sab_01);
m_sab_02 = kurtosis(sab_02);
m_sab_03 = kurtosis(sab_03);
m_sab_04 = kurtosis(sab_04);
m_sab_05 = kurtosis(sab_05);
m_sab_06 = kurtosis(sab_06);
m_sab_07 = kurtosis(sab_07);
m_sab_08 = kurtosis(sab_08);
m_sab_09 = kurtosis(sab_09);
m_sab_10 = kurtosis(sab_10);
m_sab_11 = kurtosis(sab_11);
m_sab_12 = kurtosis(sab_12);
m_sab_13 = kurtosis(sab_13);
m_sab_14 = kurtosis(sab_14);
m_sab_15 = kurtosis(sab_15);
m_sab_16 = kurtosis(sab_16);
m_sab_17 = kurtosis(sab_17);
m_sab_18 = kurtosis(sab_18);
m_sab_19 = kurtosis(sab_19);
m_sab_20 = kurtosis(sab_20);
m_sab_21 = kurtosis(sab_21);
m_sab_22 = kurtosis(sab_22);
m_sab_23 = kurtosis(sab_23);

%%%%%%%%%%%
%Matrizes 
%%%%%%%%%%%
curtosis = [m_dom_00 m_seg_00 m_ter_00 m_qua_00 m_qui_00 m_sex_00 m_sab_00; 
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

horas = [00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23];
dias = [1 2 3 4 5 6 7];

%%%%%%%%%%%
% Plot
%%%%%%%%%%%
figure;
hold on;
title('Curtosis - Canal de S�dio - Uniprot');
contourf(dias,horas,curtosis);
ylim([0 23]);
xlabel('Dias');
ylabel('Horas');
colorbar;