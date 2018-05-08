-- Roles
Create TABLE Roles (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	role VARCHAR(50) NOT NULL,
);

-- Permissions
Create TABLE Permissions (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	dscrpt VARCHAR(256) NOT NULL UNIQUE
);

-- Role_Perm
create TABLE RolePerm (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	role_id INT NOT NULL,
	perm_id INT NOT NULL,
	FOREIGN KEY (role_id) REFERENCES Roles(id),
	FOREIGN KEY (perm_id) REFERENCES Permissions(id)
);

-- Users
Create TABLE users(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(75) NOT NULL,
	name VARCHAR(75) NOT NULL UNIQUE,
	role VARCHAR(50) NOT NULL,
	posts INT NOT NULL,
	major VARCHAR(256),
	locked INT NOT NULL,
	lockedTime DATETIME NOT NULL,
	attempts INT NOT NULL,
	attemptTime DATETIME NOT NULL,
	profilePic VARCHAR(256) NOT NULL,
	FOREIGN KEY (role) REFERENCES Roles(role)
);

-- Topics
create TABLE Topics(
	name VARCHAR(100) NOT NULL PRIMARY KEY,
	abbr VARCHAR(100) NOT NULL UNIQUE
);

-- Tables for topics
create TABLE AllThreads(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ARCH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BMT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BLE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BSB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BCL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BLDS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE BWLG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CLS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CTF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CHE(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CRKT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE CT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DNC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE DVG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE FSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE FB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GLF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE GYM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HKG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE HOK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);


create TABLE HNT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE ICSK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE JR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE KYK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE KB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE LCRS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE MA(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PDLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PKR(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PLT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE PP(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE QDC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RKB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RFT(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RS(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RGB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE RNG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SKTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SKI(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SLKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SLD(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SNKL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SNB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SOCC(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SFTB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SQSH(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE SWM(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE TEN(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE TAF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE UF(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE VLB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WLK(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WVB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WTL(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WFB(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE WRST(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);

create TABLE YG(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	subTopic VARCHAR(256) NOT NULL,
	thread VARCHAR(256) NOT NULL,
	poster VARCHAR(75) NOT NULL,
	postDate DATETIME NOT NULL,
	postContent TEXT NOT NULL,
	postTLDR TEXT NOT NULL,
	FOREIGN KEY (poster) REFERENCES users(name)
);