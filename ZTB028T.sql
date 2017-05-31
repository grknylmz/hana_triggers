CREATE TRIGGER "SAPABAP1"."ZTB028T" AFTER INSERT ON "SAPABAP1"."TB028T" REFERENCING NEW ROW ZTB028T FOR EACH ROW
BEGIN
IF :ZTB028T.CLIENT = '010'
THEN INSERT
INTO "SAPABAP2"."TB028T" VALUES( :ZTB028T.CLIENT,
:ZTB028T.SPRAS,
:ZTB028T.JOBGR,
:ZTB028T.BEZ30
)
;

END
IF
;

END
;