SQLite format 3   @                                                                             
C ������>�9C                                                                                                                                    7//�tablewebsitep   //�itablewebsiteplacementswebsitepla�s//�tablewebsiteplacementswebsiteplacementsCREATE TABLE websiteplacements (id INTEGER PRIMARY KEY, rotation integer, embededcode text, status varchar(255), created_at datetime, updated_at datetime, placement_id integer, website_id integer)�
=/�/indexunique_schema_migrationsschema_migrationsCREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version")y	E�indexindex_sessions_on_updated_atsessions
CREATE INDEX "index_sessions_on_updated_at" ON "sessions" ("updated_at")yE�indexindex_sessions_on_session_idsessions	CREATE INDEX "index_sessions_on_session_id" ON "sessions" ("session_id")�!!�ItableplacementsplacementsCREATE TABLE "placements" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "image" varchar(255), "url" varchar(255), "archive" boolean, "created_at" datetime, "updated_at" datetime, "user_id" integer)�c�tablewebsiteswebsitesCREATE TABLE "websites" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "url" varchar(255), "archive" boolean, "created_at" datetime, "updated_at" datetime, "user_id" integer)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�E�]tablesessionssessionsCREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "session_id" varchar(255) NOT NULL, "data" text, "created_at" datetime, "updated_at" datetime)�O�}tableusersusersCREATE TABLE users (id INTEGER PRIMARY KEY, name varchar(255), email varchar(255), password varchar(255), utype varchar(255), archive boolean, created_at datetime, updated_at datetime)q//�tableschema_migrationsschema_migrationsCREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL)    �������p^L:(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    )20100618210341)20100618210123)20100615205133
)20100615205049	)20100615204739)20100615204712)20100615203619)20100615203530)20100610195017)20100607231456)20100607231407)20100607231246)20100607231209   &��I�&                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               � U333Mattmatt@engineyard.com111Publisherf2010-06-08 22:14:002010-06-18 23:23:11c	 #E33ARAMHOTMAILaram_software_87@hotmail.com111Publisherf2010-06-14 22:25:562010-06-18 23:27:0322`	 A!33ARAMYAHOOaram_software_87@yahoo.com111Advertiserf2010-06-14 22:25:322010-06-18 23:10:5106U	 333Mattmatt@engineyard.com11111Publisherf2010-06-08 22:14:002010-06-25 23:24:44:X	 7!33Shanonshanon@engineyard.com111Advertiserf2010-06-08 22:48:062010-06-18 23:26:44X	 ;!33Aramamustafa@engineyard.com111Advertiserf2010-06-08 22:27:592010-06-18 23:26:39513                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                websiteplacementswebsites	!placements
   H �f��H                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    H	 -33Linkedinwww.linkedin.comf2010-06-22 17:42:422010-06-22 17:42:42B '33Yahoowww.yahoo.comf2010-06-22 00:03:542010-06-22 00:03:54D )33Googlewww.google.comf2010-06-21 22:38:032010-06-21 22:38:03H -33facebookwww.facebook.comf2010-06-18 19:10:122010-06-18 19:10:12I '%33Ruby on Railswww.ruby.comf2010-06-15 00:31:162010-06-15 00:40:18M #133Engine Yardwww.engineyard.comf2010-06-08 18:00:202010-06-18 17:31:32� �`��ne"��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �
 �9%33MacDonaldhttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpg www.aram.comf2010-06-08 22:45:342010-06-22 20:29:18�!
 �7/33MacDonaldhttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpgwww.MacDonald.comf2010-06-21 22:40:452010-06-22 20:15:28 '33�

 �9'33Pepsihttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpg www.pepsi.comf2010-06-21 22:44:452010-06-22 20:27:08L	 !' 33Appleimag.applewww.apple.com2010-06-15 21:01:012010-06-15 21:01:01�#
 �=/33CocaColahttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorGifLogo2010Aram.gifwww.coclacola.comf2010-06-08 22:44:352010-06-22 20:14:5539�
 �7'33Applehttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/BlackLogo2010Aram.jpgwww.apple.comf2010-06-15 21:52:412010-06-22 20:15:121   ^333MacDonaldimage.jpgMacDonald/image.jpgf2010-06-08 22:45:342010-06-15 18:57:48   �
 �'?33Pepsiihttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/logo2009.gifwww.facebook.com/arambookf2010-06-08 22:43:562010-06-22 20:16:29� ���F.t			                                                                                                                                                                                                                                                                                                                                                                                                  �U
 �C33Z<a href='http://www.coclacola.com'><img alt='CocaCola' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorGifLogo2010Aram.gif'/></a>Request2010-06-24 22:53:452010-06-28 17:32:01�O
 �733d<a href='http://www.aram.com'><img alt='MacDonald' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpg '/></a>Request2010-06-24 22:56:182010-06-24 22:56:18�L
 �133d<a href='http://www.pepsi.com'><img alt='Pepsi' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpg '/></a>Request2010-06-24 22:54:492010-06-24 22:54:49
�R
 �?33
<a href='http://www.MacDonald.com'><img alt='MacDonald' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorLogo2010Aram.jpg'/></a>Accept2010-06-24 22:54:242010-06-24 22:56:39V � �/33<a href='http://www.apple.com'><img alt='Apple' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/BlackLogo2010Aram.jO � � �J
 �/33Z<a href='http://www.apple.com'><img alt='Apple' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/BlackLogo2010Aram.jpg'/></a>Accept2010-06-24 22:54:052010-06-24 23:04:32   � �C33Z<a href='http://www.coclacola.com'><img alt='CocaCola' src='http://i658.photobucket.com/albums/uu306/aram_software_87/logos/ColorGifLogo2010Aram.gif'/></a>Accept2010-06-24 22:53:452010-06-28 17:31:57�O
 �733d<a href='http://www.facebook.com/arambook'><img alt='Pepsi' src='ihttp://i658.photobucket.com/albums/uu306/aram_software_87/logos/logo2009.gif'/></a>Request2010-06-24 22:55:532010-06-24 22:55:53
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
   	 ������{hUB/	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       )20100618210341)20100618210123)20100615205133)20100615205049
)20100615204739	)20100615204712)20100615203619)20100615203530)20100610195017)20100607231456)20100607231407)20100607231246)20100607231209