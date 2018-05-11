-- Roles
INSERT INTO Roles (role) VALUES ("Guest"); -- 1
INSERT INTO Roles (role) VALUES ("NUser"); -- 2
INSERT INTO Roles (role) VALUES ("User");  -- 3
INSERT INTO Roles (role) VALUES ("EUser"); -- 4
INSERT INTO Roles (role) VALUES ("Mod");   -- 5
INSERT INTO Roles (role) VALUES ("Admin"); -- 6

-- Permissions
INSERT INTO Permissions (dscrpt) VALUES ("Read");   -- 1
INSERT INTO Permissions (dscrpt) VALUES ("Write");  -- 2
INSERT INTO Permissions (dscrpt) VALUES ("Report"); -- 3
INSERT INTO Permissions (dscrpt) VALUES ("Delete"); -- 4
INSERT INTO Permissions (dscrpt) VALUES ("DML");    -- 5
INSERT INTO Permissions (dscrpt) VALUES ("DMH");    -- 6
INSERT INTO Permissions (dscrpt) VALUES ("Insert"); -- 7
INSERT INTO Permissions (dscrpt) VALUES ("Create"); -- 8
INSERT INTO Permissions (dscrpt) VALUES ("Modify"); -- 9

-- Role_Perm
INSERT INTO RolePerm (role_id, perm_id) VALUES (1, 1); -- Guest Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (2, 1); -- NUser Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (2, 2); -- NUser Write
INSERT INTO RolePerm (role_id, perm_id) VALUES (2, 5); -- NUser DML
INSERT INTO RolePerm (role_id, perm_id) VALUES (3, 1); -- User Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (3, 2); -- User Write
INSERT INTO RolePerm (role_id, perm_id) VALUES (3, 3); -- User Report
INSERT INTO RolePerm (role_id, perm_id) VALUES (3, 5); -- User DML
INSERT INTO RolePerm (role_id, perm_id) VALUES (4, 1); -- EUser Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (4, 2); -- EUser Write
INSERT INTO RolePerm (role_id, perm_id) VALUES (4, 3); -- EUser Report
INSERT INTO RolePerm (role_id, perm_id) VALUES (4, 5); -- EUser DML
INSERT INTO RolePerm (role_id, perm_id) VALUES (4, 6); -- EUser DMH
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 1); -- Mod Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 2); -- Mod Write
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 3); -- Mod Report
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 4); -- Mod Delete
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 5); -- Mod DML
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 6); -- Mod DMH
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 7); -- Mod Insert
INSERT INTO RolePerm (role_id, perm_id) VALUES (5, 8); -- Mod Create
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 1); -- Admin Read
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 2); -- Admin Write
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 3); -- Admin Report
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 4); -- Admin Delete
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 5); -- Admin DML
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 6); -- Admin DMH
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 7); -- Admin Insert
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 8); -- Admin Create
INSERT INTO RolePerm (role_id, perm_id) VALUES (6, 9); -- Admin Modify

-- Users TODO: Update
INSERT INTO Users (email, password, name, role, posts, locked, lockedTime, attempts, attemptTime, profilePic) VALUES("admin@u.boisestate.edu", "adminroot", "Admin", "Admin", '0', '0', '2018-04-03 10:45:00', '0', '201-04-03 10:45:00 AM', "https://i.imgur.com/zymgstf.jpg");

-- Topics
INSERT INTO Topics VALUES("Archery", "ARCH");
INSERT INTO Topics VALUES("Badminton", "BMT");
INSERT INTO Topics VALUES("Ballet", "BLE");
INSERT INTO Topics VALUES("Baseball", "BSB");
INSERT INTO Topics VALUES("Basketball", "BKB");
INSERT INTO Topics VALUES("Bicycling", "BCL");
INSERT INTO Topics VALUES("Billiards", "BLDS");
INSERT INTO Topics VALUES("Bowling", "BWLG");
INSERT INTO Topics VALUES("Camping", "CMP");
INSERT INTO Topics VALUES("Calisthenics", "CLS");
INSERT INTO Topics VALUES("Capture The Flag", "CTF");
INSERT INTO Topics VALUES("Canoeing", "CNG");
INSERT INTO Topics VALUES("Cheerleading", "CHE");
INSERT INTO Topics VALUES("Cricket", "CRKT");
INSERT INTO Topics VALUES("Cross Training", "CT");
INSERT INTO Topics VALUES("Dance", "DNC");
INSERT INTO Topics VALUES("Disk Golf", "DG");
INSERT INTO Topics VALUES("Diving", "DVG");
INSERT INTO Topics VALUES("Dodgeball", "DGB");
INSERT INTO Topics VALUES("Fishing", "FSH");
INSERT INTO Topics VALUES("Football", "FB");
INSERT INTO Topics VALUES("Golf", "GLF");
INSERT INTO Topics VALUES("Gymnastics", "GYM");
INSERT INTO Topics VALUES("Hacky Sack", "HS");
INSERT INTO Topics VALUES("Hang Gliding", "HG");
INSERT INTO Topics VALUES("Hiking", "HKG");
INSERT INTO Topics VALUES("Hockey", "HOK");
INSERT INTO Topics VALUES("Hunting", "HNT");
INSERT INTO Topics VALUES("Ice Skating", "ICSK");
INSERT INTO Topics VALUES("Jump Rope", "JR");
INSERT INTO Topics VALUES("Kayaking", "KYK");
INSERT INTO Topics VALUES("Kickball", "KB");
INSERT INTO Topics VALUES("Lacrosse", "LCRS");
INSERT INTO Topics VALUES("Martial Arts", "MA");
INSERT INTO Topics VALUES("Paddelboarding", "PDLB");
INSERT INTO Topics VALUES("Paintball", "PB");
INSERT INTO Topics VALUES("Parkour", "PKR");
INSERT INTO Topics VALUES("Pickleball", "PKB");
INSERT INTO Topics VALUES("Pilates", "PLT");
INSERT INTO Topics VALUES("Ping Pong", "PP");
INSERT INTO Topics VALUES("Quidditch", "QDC");
INSERT INTO Topics VALUES("Racquetball", "RKB");
INSERT INTO Topics VALUES("Rafting", "RFT");
INSERT INTO Topics VALUES("Rock Climbing", "RC");
INSERT INTO Topics VALUES("Roller Skating", "RS");
INSERT INTO Topics VALUES("Rugby", "RGB");
INSERT INTO Topics VALUES("Running", "RNG");
INSERT INTO Topics VALUES("Skateboarding", "SKTB");
INSERT INTO Topics VALUES("Skiing", "SKI");
INSERT INTO Topics VALUES("Slacklining", "SLKL");
INSERT INTO Topics VALUES("Sledding", "SLD");
INSERT INTO Topics VALUES("Snorkeling", "SNKL");
INSERT INTO Topics VALUES("Snowboarding", "SNB");
INSERT INTO Topics VALUES("Soccer", "SOCC");
INSERT INTO Topics VALUES("Softball", "SFTB");
INSERT INTO Topics VALUES("Squash", "SQSH");
INSERT INTO Topics VALUES("Swimming", "SWM");
INSERT INTO Topics VALUES("Tennis", "TEN");
INSERT INTO Topics VALUES("Track and Field", "TAF");
INSERT INTO Topics VALUES("Ultimate Frisbee", "UF");
INSERT INTO Topics VALUES("Volleyball", "VLB");
INSERT INTO Topics VALUES("Walking", "WLK");
INSERT INTO Topics VALUES("Watervolleyball", "WVB");
INSERT INTO Topics VALUES("Weight Lifting", "WTL");
INSERT INTO Topics VALUES("Whiffle Ball", "WFB");
INSERT INTO Topics VALUES("Wrestling", "WRST");
INSERT INTO Topics VALUES("Yoga", "YG");

-- AllThreads TODO: Update
INSERT INTO AllThreads (thread, poster, postDate, postContent, postTLDR) VALUES ("Bam Rules", "admin", '2017-12-08 10:30:00 AM', "For now let's keep it simple.
Be respectful, refrain from cussing, if you wouldn't want a teacher to see it, don't put it.", "Be respectful")