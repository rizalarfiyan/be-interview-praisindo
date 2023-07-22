<?php
    Class Objek {
        Public $nilai;

        Public function setNilai($nilai) {
            $this->nilai = $nilai;
        }

        Public function getNilai() {
            Return $nilai;
        }
    }

    $object = new Objek();
    $object->setNilai('Tidak Tahu');
    echo $object->getNilai();

?>