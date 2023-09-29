package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"path"

	"github.com/cosmos/cosmos-sdk/crypto/keyring"
	jose "github.com/dvsekhvalnov/jose2go"
)

// Item is a thing stored on the keyring
type Item struct {
	Key         string
	Data        []byte
	Label       string
	Description string

	// Backend specific config
	KeychainNotTrustApplication bool
	KeychainNotSynchronizable   bool
}

func readKeyStore() []byte {
	home := os.Getenv("HOME")
	filename := path.Join(home, "/.ethermintd/keyring-test/mykey.info")

	bytes, err := ioutil.ReadFile(filename)
	if os.IsNotExist(err) {
		fmt.Println("file not exist", filename)
		return nil
	} else if err != nil {
		fmt.Println(err)
		return nil
	}

	payload, _, err := jose.Decode(string(bytes), "test")
	if err != nil {
		fmt.Println(err)
		return nil
	}

	decoded := &Item{}
	err = json.Unmarshal([]byte(payload), decoded)

	record := unmarshalRecord(decoded.Data)
	key := record.GetLocal().PrivKey
	return key.Value
}

func unmarshalRecord(data []byte) *keyring.Record {
	record := &keyring.Record{}
	if err := record.Unmarshal(data); err != nil {
		fmt.Println(err)
		return nil
	}
	return record
}
