-- cara koneksi MYSQL via terminal
d:
cd xampp/mysql/bin;
> mysql -u root -p;

-- cara menampilkan DATABASE
SHOW DATABASES;

-- cara membuat table
CREATE TABLE `siswa`{
    id_siswa INT(11) PRIMARY KEY AUTO_INCREMENT,
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(1),
    tmp_lahir VARCHAR(255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tanggal_entri DATETIME;
};

-- cara menampilkan table
SHOW TABLES;

-- cara menampilkan spesifikasi table
DESCRIBE `siswa`;

-- cara menambahkan record ke table
INSERT INTO `siswa` SET
    >id_siswa = NULL,
    >nis = '11801050',
    >nama_lengkap = 'IHSAN FAJAR RAMDADHAN',
    >jk = 'L',
    >tmp_lahir = 'SUBANG',
    >tgl_lahir = '2002-11-27',
    >alamat = 'PATROL',
    >no_hp = '089xxxxxxxxxx',
    tanggal_entri = NOW();

-- cara menampilkan data seluruh table
SELECT * FROM `siswa`;

-- cara menampilkan data dengan kondisi tertentu
SELECT * FROM `siswa` WHERE jk = 'p';

-- cara menampilkan beberapa record pada table
SELECT * FROM `siswa` LIMIT 3,5;

-- cara menampilkan/mengurutkan berdasarkan field tertentu
SELECT * FROM `siswa` ORDER BY tgl_lahir DESC;

-- cara menampilkan field menggunakan function
SELECT UPPER(alamat) FROM `siswa`;

-- cara menampilkan beberapa field dengan kondisi tertentu
SELECT nama_lengkap,tmp_lahir,tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = '2002';

-- cara memperbarui data pada table
UPDATE `siswa` SET tmp_lahir = 'BANDUNG',tgl_lahir = '2002-11-27' WHERE id_siswa = 1;

-- cara menghapus data
DELETE FROM `siswa` WHERE id_siswa = '';
