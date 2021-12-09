//go:build !windows
// +build !windows

package services

import "crypto/x509"

func loadWindowsCerts() []*x509.Certificate {
	var certs []*x509.Certificate
	return certs
}
