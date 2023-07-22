package test

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSumOdd(t *testing.T) {
	assert.Equal(t, 625, SumOdd(50))
}

func SumOdd(max int) int {
	sum := 0
	for i := 1; i < max; i += 2 {
		sum += i
	}
	return sum
}
