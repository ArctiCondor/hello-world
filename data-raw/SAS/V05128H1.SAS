 %macro V05128H1;
 %***********************************************************************
 MACRO NAME:    V05128H1
 PURPOSE:       HCC hierarchies for HCCs that included in software
 COMMENT:       it is assumed that:
                -MAX number of CCs are placed into global macro
                 variable N_CC in main macro
                -the following arrays are set in main macro
                 ARRAY _C(&N_CC)   CC1-CC&N_CC
                 ARRAY _HCC(&N_CC) HCC1-HCC&N_CC
                -format ICD to CC creates only 128 out of &N_CC CCs

 Note: There is no ICD10 logic herein
 ***********************************************************************;
 * set to 0 HCCs in HIER parameter - taken from hierarchy variable;
 ** MOVED outside of macro to avoid re-compilation **;

 *copy CC into HCC;
 do k=1 to dim(_HCC);
  _HCC(k)=_C(k);
 end;

 *impose hierarchies;
 /*Infection 3 */  %SET0(CC=3     , HIER=%STR(4 ));
 /*Neoplasm 1 */   %SET0(CC=8     , HIER=%STR(9 ,10 ,11 ,12 ,13 ));
 /*Neoplasm 2 */   %SET0(CC=9     , HIER=%STR(10 ,11 ,12 ,13 ));
 /*Neoplasm 3 */   %SET0(CC=10    , HIER=%STR(11 ,12 ,13 ));
 /*Neoplasm 4 */   %SET0(CC=11    , HIER=%STR(12 ,13 ));
 /*Neoplasm 5 */   %SET0(CC=12    , HIER=%STR(13 ));
 /*Diabetes 1 */   %SET0(CC=18    , HIER=%STR(19 ,20 ,21 ,46 ,47 ));
 /*Diabetes 2 */   %SET0(CC=19    , HIER=%STR(20 ,21 ));
 /*Diabetes 3 */   %SET0(CC=20    , HIER=%STR(21 ));
 /*Liver 1 */      %SET0(CC=34    , HIER=%STR(35 ,36 ,37_1, 37_2 ,38 ));
 /*Liver 2 */      %SET0(CC=35    , HIER=%STR(36 ,37_1, 37_2 ,38 ));
 /*Liver 3 */      %SET0(CC=36    , HIER=%STR(37_1, 37_2 ));
 /*Liver 4 */      %SET0(CC=37_1    , HIER=%STR(37_2 ));
 /*Digestive 1 */  %SET0(CC=41    , HIER=%STR(45 ,48 ));
 /*Digestive 2 */  %SET0(CC=42    , HIER=%STR(45 ));
 /*Digestive 6 */  %SET0(CC=46    , HIER=%STR(47 ));
 /*MSK 1 */        %SET0(CC=54    , HIER=%STR(55 ));
 /*MSK 3 */        %SET0(CC=56    , HIER=%STR(57 ));
 /*Blood 1 */      %SET0(CC=66    , HIER=%STR(75 ));
 /*Blood 2 */      %SET0(CC=67    , HIER=%STR(75 ));
 /*Blood 3 */      %SET0(CC=68    , HIER=%STR(69 ,74 ,75 ));
 /*Blood 5 */      %SET0(CC=70    , HIER=%STR(71 ));
 /*Blood 8 */      %SET0(CC=73    , HIER=%STR(74 ));
 /*SA 1 */         %SET0(CC=81    , HIER=%STR(82 ));
 /*Psychiatric 1 */%SET0(CC=87    , HIER=%STR(88 ,89 ,90 ,102 ,103 ));
 /*Psychiatric 2 */%SET0(CC=88    , HIER=%STR(89 ,90 ,102 ,103 ));
 /*Psychiatric 3 */%SET0(CC=89    , HIER=%STR(90 ,102 ,103 ));
 /*DD 1 */         %SET0(CC=96    , HIER=%STR(97 ));
 /*DD 7 */         %SET0(CC=102   , HIER=%STR(90 ,103 ));
 /*DD 8 */         %SET0(CC=103   , HIER=%STR(90 ));
 /*Spinal 1 */     %SET0(CC=106   , HIER=%STR(107 ,108 ,109 ,110 ,150 ,151 ));
 /*Spinal 2 */     %SET0(CC=107   , HIER=%STR(109 ,110 ,150 ,151 ));
 /*Spinal 3 */     %SET0(CC=108   , HIER=%STR(109 ,110 ,151 ));
 /*Spinal 4 */     %SET0(CC=109   , HIER=%STR(110 ,151 ));
 /*Neuro 2 */      %SET0(CC=112   , HIER=%STR(113 ));
 /*Arrest 1 */     %SET0(CC=125   , HIER=%STR(126 ,127 ));
 /*Arrest 2 */     %SET0(CC=126   , HIER=%STR(127 ));
 /*Heart 1 */      %SET0(CC=128   , HIER=%STR(129 ,130 ));
 /*Heart 2 */      %SET0(CC=129   , HIER=%STR(130 ));
 /*Heart 4 */      %SET0(CC=131   , HIER=%STR(132 ));
 /*Heart 10 */     %SET0(CC=137   , HIER=%STR(138 ,139 ));
 /*Heart 11 */     %SET0(CC=138   , HIER=%STR(139 ));
 /*CVD 1 */        %SET0(CC=145   , HIER=%STR(146 ,149 ));
 /*CVD 6 */        %SET0(CC=150   , HIER=%STR(151 ));
 /*Vascular 1 */   %SET0(CC=153   , HIER=%STR(217 ,254 ));
 /*Lung 1 */       %SET0(CC=158   , HIER=%STR(159 ,160 ,161 ,162 ));
 /*Lung 2 */       %SET0(CC=159   , HIER=%STR(160 ,161 ));
 /*Lung 3 */       %SET0(CC=160   , HIER=%STR(161 ));
 /*Lung 5 */       %SET0(CC=162   , HIER=%STR(161 ));
 /*Kidney 1 */     %SET0(CC=183   , HIER=%STR(184 ,187 ,188 ));
 /*Kidney 2 */     %SET0(CC=184   , HIER=%STR(187 ,188 ));
 /*Kidney 5 */     %SET0(CC=187   , HIER=%STR(188 ));
 /*Pregnancy 1 */  %SET0(CC=203   , HIER=%STR(204 ,205 ));
 /*Pregnancy 2 */  %SET0(CC=204   , HIER=%STR(205 ));
 /*Pregnancy 5 */  %SET0(CC=207   , HIER=%STR(203 ,204 ,205 ,208 ,209 ));
 /*Pregnancy 6 */  %SET0(CC=208   , HIER=%STR(209 ));
 /*Injury 4 */     %SET0(CC=226   , HIER=%STR(227 ));
 /*Newborn 1 */    %SET0(CC=242   , HIER=%STR(243 ,244 ,245 ,246 ,247 ,248 ,249 ));
 /*Newborn 2 */    %SET0(CC=243   , HIER=%STR(244 ,245 ,246 ,247 ,248 ,249 ));
 /*Newborn 3 */    %SET0(CC=244   , HIER=%STR(245 ,246 ,247 ,248 ,249 ));
 /*Newborn 4 */    %SET0(CC=245   , HIER=%STR(246 ,247 ,248 ,249 ));
 /*Newborn 5 */    %SET0(CC=246   , HIER=%STR(247 ,248 ,249 ));
 /*Newborn 6 */    %SET0(CC=247   , HIER=%STR(248 ,249 ));
 /*Newborn 7 */    %SET0(CC=248   , HIER=%STR(249 ));
 %mend V05128H1;
