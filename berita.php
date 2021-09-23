<?php
class Berita
{
    private $id;
    private $link_foto;
    private $link_berita;
    private $judul;
    private $kategori;
    private $paragraf_pertama;
    private $tanggal_publish;
    private $created_by;
    private $created_at;
    private $tableName = 'tbl_berita';
    private $dbConn;

    function setId($id)
    {
        $this->id = $id;
    }

    function getId()
    {
        return $this->id;
    }

    function setLinkFoto($link_foto)
    {
        $this->link_foto = $link_foto;
    }

    function getLinkFoto()
    {
        return $this->link_foto;
    }

    function setLinkBerita($link_berita)
    {
        $this->link_berita = $link_berita;
    }

    function getLinkBerita()
    {
        return $this->link_berita;
    }

    function setJudul($judul)
    {
        $this->judul = $judul;
    }

    function getJudul()
    {
        return $this->judul;
    }

    function setKategori($kategori)
    {
        $this->kategori = $kategori;
    }

    function getKategori()
    {
        return $this->kategori;
    }

    function setParagrafPertama($paragraf_pertama)
    {
        $this->paragraf_pertama = $paragraf_pertama;
    }

    function getParagrafPertama()
    {
        return $this->paragraf_pertama;
    }

    function setTanggalPublish($tanggal_publish)
    {
        $this->tanggal_publish = $tanggal_publish;
    }

    function getTanggalPublish()
    {
        return $this->tanggal_publish;
    }

    function setCreatedBy($created_by)
    {
        $this->created_by = $created_by;
    }

    function getCreatedBy()
    {
        return $this->created_by;
    }

    function setCreatedAt($created_at)
    {
        $this->created_at = $created_at;
    }

    function getCreatedAt()
    {
        return $this->created_at;
    }

    public function __construct()
    {
        $db = new DbConnect();
        $this->dbConn = $db->connect();
    }

    public function insert()
    {
        $sql = 'INSERT INTO ' . $this->tableName . '(id, link_foto, link_berita, judul, kategori, paragraf_pertama, tanggal_publish, created_by)
            VALUES(null, :link_foto, :link_berita, :judul, :kategori, :paragraf_pertama,
                :tanggal_publish, :created_by)';

        $stmt = $this->dbConn->prepare($sql);
        $stmt->bindParam(':link_foto', $this->link_foto);
        $stmt->bindParam(':link_berita', $this->link_berita);
        $stmt->bindParam(':judul', $this->judul);
        $stmt->bindParam(':kategori', $this->kategori);
        $stmt->bindParam(':paragraf_pertama', $this->paragraf_pertama);
        $stmt->bindParam(':tanggal_publish', $this->tanggal_publish);
        $stmt->bindParam(':created_by', $this->created_by);

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }
}
