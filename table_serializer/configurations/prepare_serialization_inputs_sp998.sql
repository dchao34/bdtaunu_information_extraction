CREATE MATERIALIZED VIEW serializer_inputs_sp998 AS 
SELECT 
  eid, 
  ny, 
  ntracks,
  r2, 
  r2all, 
  ybpairmmiss2,
  ybpairmmissprime2, 
  ybpaireextra50, 
  ybpaircosthetat,
  ytagblp3magcm,
  ytagbcosby,
  ytagbcosthetadlcm,
  ytagbdstardeltam,
  ytagbcosthetadsoftcm,
  ytagbsoftp3magcm,
  ysigbhp3magcm,
  ysigbcosby,
  ysigbcosthetadtaucm,
  ysigbvtxprobb,
  ysigbdstardeltam,
  ysigbcosthetadsoftcm,
  ysigbsoftp3magcm,
  ysigbhmass,
  ysigbvtxprobh,
  y_tagb_idx,
  y_sigb_idx,
  b_istag,
  b_d_idx,
  b_lh_idx,
  d_isdstar,
  d_dmass,
  d_dmode,
  d_dstarmode,
  h_epid,
  h_mupid,
  l_epid,
  l_mupid

FROM 
  framework_ntuples_sp998 
  INNER JOIN 
  additional_features_sp998 
  USING (eid);
