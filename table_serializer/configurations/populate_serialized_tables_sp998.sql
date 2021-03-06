BEGIN;

CREATE TABLE event_level_features_sp998 (
  eid integer, 
  ny integer, 
  ntracks integer, 
  r2 real, 
  r2all real
);

CREATE TABLE upsilon_candidates_sp998 (
  eid integer, 
  cidx integer, 
  mmiss2 real, 
  mmiss2prime real, 
  eextra real,
  costhetat real, 
  tag_lp3 real, 
  tag_cosby real, 
  tag_costhetadl real,
  tag_isbdstar integer, 
  tag_dmass real, 
  tag_deltam real, 
  tag_costhetadsoft real,
  tag_softp3magcm real, 
  sig_hp3 real, 
  sig_cosby real, 
  sig_costhetadtau real,
  sig_vtxb real, 
  sig_isbdstar integer, 
  sig_dmass real, 
  sig_deltam real,
  sig_costhetadsoft real, 
  sig_softp3magcm real, 
  sig_hmass real, 
  sig_vtxh real,
  tag_dmode integer, 
  tag_dstarmode integer, 
  sig_dmode integer, 
  sig_dstarmode integer,
  tag_l_epid integer, 
  tag_l_mupid integer, 
  sig_h_epid integer, 
  sig_h_mupid integer
);

\copy event_level_features_sp998 FROM 'event_level_features_sp998.csv' WITH CSV HEADER;
\copy upsilon_candidates_sp998 FROM 'upsilon_candidates_sp998.csv' WITH CSV HEADER;

DROP MATERIALIZED VIEW serializer_inputs_sp998;

CREATE INDEX ON event_level_features_sp998 (eid);
CREATE INDEX ON upsilon_candidates_sp998 (eid, cidx);

COMMIT;

VACUUM ANALYZE event_level_features_sp998;
VACUUM ANALYZE upsilon_candidates_sp998;
