--------------------------------------------------------
--  File created - Monday-April-22-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "ADMIN" 
   (	"ID_ADMIN" VARCHAR2(10), 
	"NAMA_ADMIN" VARCHAR2(20), 
	"PASSWORD_ADMIN" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table HAMA
--------------------------------------------------------

  CREATE TABLE "HAMA" 
   (	"ID_HAMA" VARCHAR2(10), 
	"NAMA_HAMA" VARCHAR2(20), 
	"CARA_PENCEGAHAN" VARCHAR2(200)
   ) ;
--------------------------------------------------------
--  DDL for Table TANAMAN
--------------------------------------------------------

  CREATE TABLE "TANAMAN" 
   (	"ID_TANAMAN" VARCHAR2(10), 
	"TAN_ID_TANAMAN" VARCHAR2(10), 
	"NAMA_TANAMAN" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table DETAIL_HAMA
--------------------------------------------------------

  CREATE TABLE "DETAIL_HAMA" 
   (	"ID_DETAIL_HAMA" VARCHAR2(10), 
	"ID_TANAMAN" VARCHAR2(10), 
	"ID_HAMA" VARCHAR2(10)
   ) ;
--------------------------------------------------------
--  DDL for Table PUPUK
--------------------------------------------------------

  CREATE TABLE "PUPUK" 
   (	"ID_PUPUK" VARCHAR2(10), 
	"ID_JENIS_PUPUK" VARCHAR2(10), 
	"NAMA_PUPUK" VARCHAR2(20), 
	"HARGA_PUPUK" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DETAIL_PUPUK
--------------------------------------------------------

  CREATE TABLE "DETAIL_PUPUK" 
   (	"ID_DETAIL_PUPUK" VARCHAR2(10), 
	"ID_TANAMAN" VARCHAR2(10), 
	"ID_PUPUK" VARCHAR2(10), 
	"TAKARAN" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table JENIS_PUPUK
--------------------------------------------------------

  CREATE TABLE "JENIS_PUPUK" 
   (	"ID_JENIS_PUPUK" VARCHAR2(10), 
	"NAMA_JENIS_PUPUK" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVINSI
--------------------------------------------------------

  CREATE TABLE "PROVINSI" 
   (	"ID_PROVINSI" VARCHAR2(20), 
	"NAMA_PROVINSI" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table KOTA
--------------------------------------------------------

  CREATE TABLE "KOTA" 
   (	"ID_KOTA" VARCHAR2(20), 
	"ID_PROVINSI" VARCHAR2(20), 
	"NAMA_KOTA" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table PERMINTAAN_PASAR
--------------------------------------------------------

  CREATE TABLE "PERMINTAAN_PASAR" 
   (	"ID_PERMINTAAN" VARCHAR2(10), 
	"ID_TANAMAN" VARCHAR2(10), 
	"TGL_PERMINTAAN" VARCHAR2(100 CHAR), 
	"JUMLAH_PERMINTAAN" FLOAT(126)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFIL_PASAR
--------------------------------------------------------

  CREATE TABLE "PROFIL_PASAR" 
   (	"ID_PROFIL" VARCHAR2(10), 
	"ID_TANAMAN" VARCHAR2(10), 
	"TANGGAL" VARCHAR2(100 CHAR), 
	"HARGA_PASAR" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table STATUS_HARA
--------------------------------------------------------

  CREATE TABLE "STATUS_HARA" 
   (	"ID_STATUS" VARCHAR2(20), 
	"NAMA_STATUS" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table UKURAN
--------------------------------------------------------

  CREATE TABLE "UKURAN" 
   (	"ID_UKURAN" VARCHAR2(20), 
	"ID_KOTA" VARCHAR2(20), 
	"ID_STATUS" VARCHAR2(20), 
	"ID_PUPUK" VARCHAR2(10), 
	"LUAS_LAHAN" NUMBER(*,0), 
	"KEBUTUHAN_PUPUK" NUMBER(*,0)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE KOTA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into KOTA
Insert into KOTA (ID_KOTA,ID_PROVINSI,NAMA_KOTA) values ('KO001'.'PR001'.'Serang');
Insert into KOTA (ID_KOTA,ID_PROVINSI,NAMA_KOTA) values ('KO002'.'PR002'.'Brebes');
Insert into KOTA (ID_KOTA,ID_PROVINSI,NAMA_KOTA) values ('KO003'.'PR003'.'Ponorogo');
Insert into KOTA (ID_KOTA,ID_PROVINSI,NAMA_KOTA) values ('KO004'.'PR004'.'Bantul');

---------------------------------------------------
--   END DATA FOR TABLE KOTA
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE UKURAN
--   FILTER = none used
---------------------------------------------------
REM INSERTING into UKURAN
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK001'.'KO001'.'ST001'.'PU003'.54445.545);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK002'.'KO001'.'ST002'.'PU003'.0.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK003'.'KO001'.'ST003'.'PU003'.10889.6806);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK004'.'KO002'.'ST001'.'PU003'.0.2663);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK005'.'KO002'.'ST002'.'PU003'.15977.1198);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK006'.'KO002'.'ST003'.'PU003'.53257.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK007'.'KO003'.'ST001'.'PU003'.6030.231);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK008'.'KO003'.'ST002'.'PU003'.28391.2129);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK009'.'KO003'.'ST003'.'PU003'.4611.754);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK010'.'KO004'.'ST001'.'PU003'.3935.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK011'.'KO004'.'ST002'.'PU003'.13176.988);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK012'.'KO004'.'ST003'.'PU003'.0.492);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK013'.'KO001'.'ST001'.'PU005'.37916.1896);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK014'.'KO001'.'ST002'.'PU005'.13421.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK015'.'KO001'.'ST003'.'PU005'.13997.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK016'.'KO002'.'ST001'.'PU005'.0.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK017'.'KO002'.'ST002'.'PU005'.8047.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK018'.'KO002'.'ST003'.'PU005'.18746.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK019'.'KO003'.'ST001'.'PU005'.0.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK020'.'KO003'.'ST002'.'PU005'.10281.0);
Insert into UKURAN (ID_UKURAN,ID_KOTA,ID_STATUS,ID_PUPUK,LUAS_LAHAN,KEBUTUHAN_PUPUK) values ('UK021'.'KO003'.'ST003'.'PU005'.28751.0);

---------------------------------------------------
--   END DATA FOR TABLE UKURAN
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PROFIL_PASAR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PROFIL_PASAR
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('0'.'TA001'.'01-01-2013'.5000);
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('1'.'TA001'.'01-02-2013'.6500);
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('2'.'TA002'.'01-01-2013'.4000);
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('3'.'TA002'.'01-02-2013'.4000);
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('4'.'TA003'.'01-01-2013'.4500);
Insert into PROFIL_PASAR (ID_PROFIL,ID_TANAMAN,TANGGAL,HARGA_PASAR) values ('5'.'TA003'.'01-02-2013'.4750);

---------------------------------------------------
--   END DATA FOR TABLE PROFIL_PASAR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE STATUS_HARA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into STATUS_HARA
Insert into STATUS_HARA (ID_STATUS,NAMA_STATUS) values ('ST001'.'Rendah');
Insert into STATUS_HARA (ID_STATUS,NAMA_STATUS) values ('ST002'.'Sedang');
Insert into STATUS_HARA (ID_STATUS,NAMA_STATUS) values ('ST003'.'Tinggi');

---------------------------------------------------
--   END DATA FOR TABLE STATUS_HARA
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE HAMA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HAMA
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA009'.'wereng hijau'.'coba deh');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA001'.'Wereng Coklat'.'menggunakan variatas tahan, penanaman padi serempak dengan jarak tanam yang tidak terlalu rapat, pergiliran varietas dan pengendalian dengan insektisida.');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA002'.'Ulat Tanah'.'• Pengolahan tanah dengan baik sebelum penanaman ,  • Bertanam secara serempak, • Penggenangan air sebelum tanam');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA003'.'Lalat Bibit'.'• Bertanam secara serempak pada awal musim hujan, • Pergiliran tanaman dengan tanaman selain jagung dan padi, • Tanaman disemprot dengan insektisida dengan dosis sesuai anjuran., ');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA004'.'Ulat Grayak'.'• Sisa tanaman dan gulma dibakar sebelum pengolahan tanah, • Pengolahan tanah dengan baik sebelum penanaman, • Tanaman disemprot dengan insektisida dengan dosis sesuai anjuran');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA005'.'Penggerek Jagung'.'• Pengolahan tanah dengan baik sebelum penanaman, • Bertanam secara serempak, • Penggenangan air sebelum tanam');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA006'.'Aphis SPP'.'menanam kedelai pada waktunya, mengolah tanah dengan baik, bersih, memenuhi syarat, tidak ditumbuhi tanaman inang ');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA007'.'Melano Agromyza'.'(1) waktu tanam pada saat tanah masih lembab dan subur (tidak pada bulan-bulan kering); (2) penyemprotan Agrothion 50 EC, Azodrin 15 WSC, Sumithoin 50 EC, Surecide 25 EC');
Insert into HAMA (ID_HAMA,NAMA_HAMA,CARA_PENCEGAHAN) values ('HA008'.'Kumbang Daun'.'Pengendalian: penyemprotan Agrothion 50 EC, Basudin 50 EC, Diazinon 60 EC, dan Agrothion 50 EC.');

---------------------------------------------------
--   END DATA FOR TABLE HAMA
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TANAMAN
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TANAMAN
Insert into TANAMAN (ID_TANAMAN,TAN_ID_TANAMAN,NAMA_TANAMAN) values ('TA001'.null.'Padi');
Insert into TANAMAN (ID_TANAMAN,TAN_ID_TANAMAN,NAMA_TANAMAN) values ('TA002'.null.'Jagung');
Insert into TANAMAN (ID_TANAMAN,TAN_ID_TANAMAN,NAMA_TANAMAN) values ('TA003'.null.'Kedelai');

---------------------------------------------------
--   END DATA FOR TABLE TANAMAN
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DETAIL_HAMA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DETAIL_HAMA
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH001'.'TA001'.'HA001');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH002'.'TA002'.'HA002');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH003'.'TA002'.'HA003');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH004'.'TA002'.'HA004');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH005'.'TA002'.'HA005');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH006'.'TA003'.'HA004');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH007'.'TA003'.'HA006');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH008'.'TA003'.'HA007');
Insert into DETAIL_HAMA (ID_DETAIL_HAMA,ID_TANAMAN,ID_HAMA) values ('DH009'.'TA003'.'HA008');

---------------------------------------------------
--   END DATA FOR TABLE DETAIL_HAMA
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ADMIN
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ADMIN
Insert into ADMIN (ID_ADMIN,NAMA_ADMIN,PASSWORD_ADMIN) values ('AD003'.'Ceria'.'Ceria');
Insert into ADMIN (ID_ADMIN,NAMA_ADMIN,PASSWORD_ADMIN) values ('AD004'.'jalu'.'jalu');
Insert into ADMIN (ID_ADMIN,NAMA_ADMIN,PASSWORD_ADMIN) values ('AD001'.'Ayu'.'ayu');
Insert into ADMIN (ID_ADMIN,NAMA_ADMIN,PASSWORD_ADMIN) values ('AD002'.'Dewi'.'dewi');

---------------------------------------------------
--   END DATA FOR TABLE ADMIN
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PROVINSI
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PROVINSI
Insert into PROVINSI (ID_PROVINSI,NAMA_PROVINSI) values ('PR001'.'Jawa Barat');
Insert into PROVINSI (ID_PROVINSI,NAMA_PROVINSI) values ('PR002'.'Jawa Tengah');
Insert into PROVINSI (ID_PROVINSI,NAMA_PROVINSI) values ('PR003'.'Jawa Timur');
Insert into PROVINSI (ID_PROVINSI,NAMA_PROVINSI) values ('PR004'.'Yogyakarta');

---------------------------------------------------
--   END DATA FOR TABLE PROVINSI
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PERMINTAAN_PASAR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PERMINTAAN_PASAR
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('0'.'TA001'.'01-01-2013'.3000);
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('1'.'TA001'.'01-02-2013'.2000);
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('2'.'TA002'.'01-01-2013'.5000);
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('3'.'TA002'.'01-02-2013'.6000);
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('4'.'TA003'.'01-01-2013'.2000);
Insert into PERMINTAAN_PASAR (ID_PERMINTAAN,ID_TANAMAN,TGL_PERMINTAAN,JUMLAH_PERMINTAAN) values ('5'.'TA003'.'01-02-2013'.1500);

---------------------------------------------------
--   END DATA FOR TABLE PERMINTAAN_PASAR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE JENIS_PUPUK
--   FILTER = none used
---------------------------------------------------
REM INSERTING into JENIS_PUPUK
Insert into JENIS_PUPUK (ID_JENIS_PUPUK,NAMA_JENIS_PUPUK) values ('JP001'.'Organik');
Insert into JENIS_PUPUK (ID_JENIS_PUPUK,NAMA_JENIS_PUPUK) values ('JP002'.'Anorganik');
Insert into JENIS_PUPUK (ID_JENIS_PUPUK,NAMA_JENIS_PUPUK) values ('JP003'.'Majemuk');

---------------------------------------------------
--   END DATA FOR TABLE JENIS_PUPUK
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DETAIL_PUPUK
--   FILTER = none used
---------------------------------------------------
REM INSERTING into DETAIL_PUPUK
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP007'.'TA001'.'PU005'.'75-100');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP004'.'TA003'.'PU001'.'5000');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP005'.'TA001'.'PU003'.'100-150');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP006'.'TA002'.'PU003'.'75-100');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP001'.'TA001'.'PU002'.'200-250');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP002'.'TA002'.'PU002'.'200-300');
Insert into DETAIL_PUPUK (ID_DETAIL_PUPUK,ID_TANAMAN,ID_PUPUK,TAKARAN) values ('DP003'.'TA003'.'PU002'.'50');

---------------------------------------------------
--   END DATA FOR TABLE DETAIL_PUPUK
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PUPUK
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PUPUK
Insert into PUPUK (ID_PUPUK,ID_JENIS_PUPUK,NAMA_PUPUK,HARGA_PUPUK) values ('PU005'.'JP002'.'KCL'.3300);
Insert into PUPUK (ID_PUPUK,ID_JENIS_PUPUK,NAMA_PUPUK,HARGA_PUPUK) values ('PU001'.'JP001'.'Kompos'.2000);
Insert into PUPUK (ID_PUPUK,ID_JENIS_PUPUK,NAMA_PUPUK,HARGA_PUPUK) values ('PU002'.'JP002'.'Urea'.1800);
Insert into PUPUK (ID_PUPUK,ID_JENIS_PUPUK,NAMA_PUPUK,HARGA_PUPUK) values ('PU003'.'JP002'.'SP36'.950);
Insert into PUPUK (ID_PUPUK,ID_JENIS_PUPUK,NAMA_PUPUK,HARGA_PUPUK) values ('PU004'.'JP003'.'NPK'.1100);

---------------------------------------------------
--   END DATA FOR TABLE PUPUK
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY ("ID_ADMIN") ENABLE;
 
  ALTER TABLE "ADMIN" MODIFY ("ID_ADMIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETAIL_HAMA
--------------------------------------------------------

  ALTER TABLE "DETAIL_HAMA" ADD CONSTRAINT "PK_DETAIL_HAMA" PRIMARY KEY ("ID_DETAIL_HAMA") ENABLE;
 
  ALTER TABLE "DETAIL_HAMA" MODIFY ("ID_DETAIL_HAMA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETAIL_PUPUK
--------------------------------------------------------

  ALTER TABLE "DETAIL_PUPUK" ADD CONSTRAINT "PK_DETAIL_PUPUK" PRIMARY KEY ("ID_DETAIL_PUPUK") ENABLE;
 
  ALTER TABLE "DETAIL_PUPUK" MODIFY ("ID_DETAIL_PUPUK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HAMA
--------------------------------------------------------

  ALTER TABLE "HAMA" ADD CONSTRAINT "PK_HAMA" PRIMARY KEY ("ID_HAMA") ENABLE;
 
  ALTER TABLE "HAMA" MODIFY ("ID_HAMA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JENIS_PUPUK
--------------------------------------------------------

  ALTER TABLE "JENIS_PUPUK" ADD CONSTRAINT "PK_JENIS_PUPUK" PRIMARY KEY ("ID_JENIS_PUPUK") ENABLE;
 
  ALTER TABLE "JENIS_PUPUK" MODIFY ("ID_JENIS_PUPUK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KOTA
--------------------------------------------------------

  ALTER TABLE "KOTA" ADD CONSTRAINT "PK_KOTA" PRIMARY KEY ("ID_KOTA") ENABLE;
 
  ALTER TABLE "KOTA" MODIFY ("ID_KOTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERMINTAAN_PASAR
--------------------------------------------------------

  ALTER TABLE "PERMINTAAN_PASAR" ADD CONSTRAINT "PK_PERMINTAAN_PASAR" PRIMARY KEY ("ID_PERMINTAAN") ENABLE;
 
  ALTER TABLE "PERMINTAAN_PASAR" MODIFY ("ID_PERMINTAAN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFIL_PASAR
--------------------------------------------------------

  ALTER TABLE "PROFIL_PASAR" ADD CONSTRAINT "PK_PROFIL_PASAR" PRIMARY KEY ("ID_PROFIL") ENABLE;
 
  ALTER TABLE "PROFIL_PASAR" MODIFY ("ID_PROFIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROVINSI
--------------------------------------------------------

  ALTER TABLE "PROVINSI" ADD CONSTRAINT "PK_PROVINSI" PRIMARY KEY ("ID_PROVINSI") ENABLE;
 
  ALTER TABLE "PROVINSI" MODIFY ("ID_PROVINSI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PUPUK
--------------------------------------------------------

  ALTER TABLE "PUPUK" ADD CONSTRAINT "PK_PUPUK" PRIMARY KEY ("ID_PUPUK") ENABLE;
 
  ALTER TABLE "PUPUK" MODIFY ("ID_PUPUK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STATUS_HARA
--------------------------------------------------------

  ALTER TABLE "STATUS_HARA" ADD CONSTRAINT "PK_STATUS_HARA" PRIMARY KEY ("ID_STATUS") ENABLE;
 
  ALTER TABLE "STATUS_HARA" MODIFY ("ID_STATUS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TANAMAN
--------------------------------------------------------

  ALTER TABLE "TANAMAN" ADD CONSTRAINT "PK_TANAMAN" PRIMARY KEY ("ID_TANAMAN") ENABLE;
 
  ALTER TABLE "TANAMAN" MODIFY ("ID_TANAMAN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UKURAN
--------------------------------------------------------

  ALTER TABLE "UKURAN" ADD CONSTRAINT "PK_UKURAN" PRIMARY KEY ("ID_UKURAN") ENABLE;
 
  ALTER TABLE "UKURAN" MODIFY ("ID_UKURAN" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Index PK_ADMIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ADMIN" ON "ADMIN" ("ID_ADMIN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_DETAIL_HAMA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DETAIL_HAMA" ON "DETAIL_HAMA" ("ID_DETAIL_HAMA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_DETAIL_PUPUK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DETAIL_PUPUK" ON "DETAIL_PUPUK" ("ID_DETAIL_PUPUK") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HAMA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HAMA" ON "HAMA" ("ID_HAMA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_JENIS_PUPUK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_JENIS_PUPUK" ON "JENIS_PUPUK" ("ID_JENIS_PUPUK") 
  ;
--------------------------------------------------------
--  DDL for Index PK_KOTA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_KOTA" ON "KOTA" ("ID_KOTA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PERMINTAAN_PASAR
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PERMINTAAN_PASAR" ON "PERMINTAAN_PASAR" ("ID_PERMINTAAN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PROFIL_PASAR
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROFIL_PASAR" ON "PROFIL_PASAR" ("ID_PROFIL") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PROVINSI
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROVINSI" ON "PROVINSI" ("ID_PROVINSI") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PUPUK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PUPUK" ON "PUPUK" ("ID_PUPUK") 
  ;
--------------------------------------------------------
--  DDL for Index PK_STATUS_HARA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STATUS_HARA" ON "STATUS_HARA" ("ID_STATUS") 
  ;
--------------------------------------------------------
--  DDL for Index PK_TANAMAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_TANAMAN" ON "TANAMAN" ("ID_TANAMAN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_UKURAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_UKURAN" ON "UKURAN" ("ID_UKURAN") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_1_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_1_FK" ON "DETAIL_PUPUK" ("ID_TANAMAN") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_2_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_2_FK" ON "DETAIL_HAMA" ("ID_TANAMAN") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_3_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_3_FK" ON "DETAIL_PUPUK" ("ID_PUPUK") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_4_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_4_FK" ON "PUPUK" ("ID_JENIS_PUPUK") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_5_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_5_FK" ON "DETAIL_HAMA" ("ID_HAMA") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_6_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_6_FK" ON "TANAMAN" ("TAN_ID_TANAMAN") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_7_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_7_FK" ON "PROFIL_PASAR" ("ID_TANAMAN") 
  ;
--------------------------------------------------------
--  DDL for Index RELATIONSHIP_8_FK
--------------------------------------------------------

  CREATE INDEX "RELATIONSHIP_8_FK" ON "PERMINTAAN_PASAR" ("ID_TANAMAN") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table DETAIL_HAMA
--------------------------------------------------------

  ALTER TABLE "DETAIL_HAMA" ADD CONSTRAINT "FK_DETAIL_H_RELATIONS_HAMA" FOREIGN KEY ("ID_HAMA")
	  REFERENCES "HAMA" ("ID_HAMA") ENABLE;
 
  ALTER TABLE "DETAIL_HAMA" ADD CONSTRAINT "FK_DETAIL_H_RELATIONS_TANAMAN" FOREIGN KEY ("ID_TANAMAN")
	  REFERENCES "TANAMAN" ("ID_TANAMAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETAIL_PUPUK
--------------------------------------------------------

  ALTER TABLE "DETAIL_PUPUK" ADD CONSTRAINT "FK_DETAIL_P_RELATIONS_PUPUK" FOREIGN KEY ("ID_PUPUK")
	  REFERENCES "PUPUK" ("ID_PUPUK") ENABLE;
 
  ALTER TABLE "DETAIL_PUPUK" ADD CONSTRAINT "FK_DETAIL_P_RELATIONS_TANAMAN" FOREIGN KEY ("ID_TANAMAN")
	  REFERENCES "TANAMAN" ("ID_TANAMAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KOTA
--------------------------------------------------------

  ALTER TABLE "KOTA" ADD CONSTRAINT "FK_KOTA_RELATIONS_PROVINSI" FOREIGN KEY ("ID_PROVINSI")
	  REFERENCES "PROVINSI" ("ID_PROVINSI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERMINTAAN_PASAR
--------------------------------------------------------

  ALTER TABLE "PERMINTAAN_PASAR" ADD CONSTRAINT "FK_PERMINTA_RELATIONS_TANAMAN" FOREIGN KEY ("ID_TANAMAN")
	  REFERENCES "TANAMAN" ("ID_TANAMAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFIL_PASAR
--------------------------------------------------------

  ALTER TABLE "PROFIL_PASAR" ADD CONSTRAINT "FK_PROFIL_P_RELATIONS_TANAMAN" FOREIGN KEY ("ID_TANAMAN")
	  REFERENCES "TANAMAN" ("ID_TANAMAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PUPUK
--------------------------------------------------------

  ALTER TABLE "PUPUK" ADD CONSTRAINT "FK_PUPUK_RELATIONS_JENIS_PU" FOREIGN KEY ("ID_JENIS_PUPUK")
	  REFERENCES "JENIS_PUPUK" ("ID_JENIS_PUPUK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TANAMAN
--------------------------------------------------------

  ALTER TABLE "TANAMAN" ADD CONSTRAINT "FK_TANAMAN_RELATIONS_TANAMAN" FOREIGN KEY ("TAN_ID_TANAMAN")
	  REFERENCES "TANAMAN" ("ID_TANAMAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UKURAN
--------------------------------------------------------

  ALTER TABLE "UKURAN" ADD CONSTRAINT "FK_UKURAN_RELATIONS_KOTA" FOREIGN KEY ("ID_KOTA")
	  REFERENCES "KOTA" ("ID_KOTA") ENABLE;
 
  ALTER TABLE "UKURAN" ADD CONSTRAINT "FK_UKURAN_RELATIONS_PUPUK" FOREIGN KEY ("ID_PUPUK")
	  REFERENCES "PUPUK" ("ID_PUPUK") ENABLE;
 
  ALTER TABLE "UKURAN" ADD CONSTRAINT "FK_UKURAN_RELATIONS_STATUS_H" FOREIGN KEY ("ID_STATUS")
	  REFERENCES "STATUS_HARA" ("ID_STATUS") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_AD
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ID_AD" 
before insert on admin
for each row
declare
 maks int;
begin
 select max(to_number(substr(id_admin,3,3))) into maks from 
admin;
 :new.id_admin := 'AD'||lpad(maks+1,3,'0');
end;

/
ALTER TRIGGER "ID_AD" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_DEHA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ID_DEHA" 
before insert on detail_hama
for each row
declare
 maks int;
begin
 select max(to_number(substr(id_detail_hama,3,3))) into maks from detail_hama;
 :new.id_detail_hama := 'DH'||lpad(maks+1,3,'0');
end
;
/
ALTER TRIGGER "ID_DEHA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_HA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ID_HA" 
before insert on hama
for each row
declare
 maks int;
begin
 select max(to_number(substr(id_hama,3,3))) into maks from hama;
 :new.id_hama := 'HA'||lpad(maks+1,3,'0');
end
;
/
ALTER TRIGGER "ID_HA" ENABLE;
