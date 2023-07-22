<?php
    Class Objek {
        public $nilai;

        public function setNilai($nilai) {
            $this->nilai = $nilai;
        }

        public function getNilai() {
            return $this->nilai;
        }
    }

    $object = new Objek();
    $object->setNilai('Tidak Tahu');
    echo $object->getNilai();

?>