package test

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNumberSeries(t *testing.T) {
	assert.Equal(t, []int{0, 0, 1, 1, 2, 3, 5, 8, 13, 21, 34}, maxFibonnaci(50))
}

func maxFibonnaci(max int) []int {
	var res []int
	for i, result := 0, fibonacci(0); result < max; i++ {
		res = append(res, result)
		result = fibonacci(i)
	}
	return res
}

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}

	return fibonacci(n-1) + fibonacci(n-2)
}
