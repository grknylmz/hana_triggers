CREATE TRIGGER "SAPABAP1"."ZBUT050" AFTER INSERT ON "SAPABAP1"."BUT050" REFERENCING NEW ROW ZBUT050 FOR EACH ROW
BEGIN
IF :ZBUT050.RLTYP = 'Z00013'
THEN INSERT
INTO "SAPABAP2"."BUT050" VALUES( 
:ZBUT050.CLIENT,  
:ZBUT050.RELNR,
:ZBUT050.PARTNER1,
:ZBUT050.PARTNER2,
:ZBUT050.DATE_TO,
:ZBUT050.DATE_FROM,
:ZBUT050.RELTYP,
:ZBUT050.XRF,
:ZBUT050.DFTVAL,
:ZBUT050.RLTYP,
:ZBUT050.RELKIND,
:ZBUT050.CRUSR,
:ZBUT050.CRDAT,
:ZBUT050.CRTIM,
:ZBUT050.CHUSR,
:ZBUT050.CHDAT,
:ZBUT050.CHTIM,
:ZBUT050.XDFREL,
:ZBUT050.XDFREL2,
:ZBUT050.DB_KEY,
:ZBUT050.DB_KEY_TD
)
;

END
IF
;

END
;