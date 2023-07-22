package test

import (
	"math"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestTriangle(t *testing.T) {
	sisi := 10.0
	assert.Equal(t, 30.0, Keliling(sisi))
	assert.Equal(t, 43.30127018922194, Luas(sisi))
}

func Luas(sisi float64) float64 {
	tinggi := math.Sqrt(math.Pow(sisi, 2) - math.Pow(sisi/2, 2))
	alas := sisi
	return 0.5 * alas * tinggi
}

func Keliling(sisi float64) float64 {
	return 3 * sisi
}
