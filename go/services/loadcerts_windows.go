//go:build windows
// +build windows

package services

import (
	"crypto/x509"
	"fmt"
	"syscall"
	"unsafe"
)

func loadWindowsCerts() []*x509.Certificate {
	const CryptENotFound = 0x80092004
	// Copied from: https://github.com/golang/go/issues/16736#issuecomment-540373689
	// Because golang team apparently doesn't believe that Windows deserves security.
	ptr, err := syscall.UTF16PtrFromString("Root")
	if err != nil {
		fmt.Println(err)
	}
	storeHandle, err := syscall.CertOpenSystemStore(0, ptr)
	if err != nil {
		fmt.Println(syscall.GetLastError())
	}

	var certs []*x509.Certificate
	var cert *syscall.CertContext
	for {
		cert, err = syscall.CertEnumCertificatesInStore(storeHandle, cert)
		if err != nil {
			if errno, ok := err.(syscall.Errno); ok {
				if errno == CryptENotFound {
					break
				}
			}
			fmt.Println(syscall.GetLastError())
		}
		if cert == nil {
			break
		}
		// Copy the buf, since ParseCertificate does not create its own copy.
		buf := (*[1 << 20]byte)(unsafe.Pointer(cert.EncodedCert))[:]
		buf2 := make([]byte, cert.Length)
		copy(buf2, buf)
		if c, err := x509.ParseCertificate(buf2); err == nil {
			certs = append(certs, c)
		}
	}
	return certs
}
