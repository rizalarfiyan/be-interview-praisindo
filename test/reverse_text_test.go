package test

import (
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestReverseText(t *testing.T) {
	assert.Equal(t, "TES LULUS BISA SAYA", ReverseText("SAYA BISA LULUS TES"))
}

func ReverseText(str string) string {
	strArr := strings.Split(str, " ")
	var resultArr []string
	for _, result := range strArr {
		resultArr = append([]string{result}, resultArr...)
	}
	return strings.Join(resultArr, " ")
}
