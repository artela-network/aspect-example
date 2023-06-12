package main

import (
	"context"
	"crypto/ecdsa"
	"encoding/hex"
	"fmt"
	"log"
	"math/big"

	store "github.com/artela-network/test/mycontract"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/ethereum/go-ethereum/ethclient"
)

func main() {
	client, err := ethclient.Dial("http://127.0.0.1:8545")
	if err != nil {
		log.Fatal(err)
		return
	}

	// "E\xc5\xe7\x00ĭ<\xe23\x13\xee\x97ȫ\xe7]\x15\xfc\x8ff\x8a{\x10A\xd6X\x00Js9\xef\xf9"
	// "\n E\xc5\xe7\x00ĭ<\xe23\x13\xee\x97ȫ\xe7]\x15\xfc\x8ff\x8a{\x10A\xd6X\x00Js9\xef\xf9"
	privKey := readKeyStore()
	if len(privKey) != 34 {
		log.Fatal("read key store failed")
		return
	}
	privateKey, err := crypto.ToECDSA(privKey[2:])
	if err != nil {
		log.Fatal(err)
		return
	}

	publicKey := privateKey.Public()
	publicKeyECDSA, ok := publicKey.(*ecdsa.PublicKey)
	if !ok {
		log.Fatal("error casting public key to ECDSA")
		return
	}

	fromAddress := crypto.PubkeyToAddress(*publicKeyECDSA)
	fmt.Println("sender: ", hex.EncodeToString(fromAddress[:]))

	///
	/// deploy contract
	///
	opts := txOpts(client, privateKey, fromAddress)
	// input := "1.0"
	address, tx, instance, err := store.DeployStorage(opts, client)
	if err != nil {
		log.Fatal(err)
		return
	}

	fmt.Println("deploy success, address: ", address.Hex()) // e.g.0x08781323c6F54AbA15b328cdffb958c22A22B46a
	fmt.Println("deploy tx hash: ", tx.Hash().Hex())        // e.g.0x70d8b7c85518732d9dc701dfd78ed9a0df8fe6b8e7156ceff3c1b4f92c1bf780

	///
	/// call contract: store
	///
	opts = txOpts(client, privateKey, fromAddress)
	storeTx, err := instance.Store(opts, "wang", store.StoragePerson{
		Id:      222,
		Balance: 5000,
	})
	if err != nil {
		log.Fatal(err)
		return
	}
	fmt.Println("store tx hash: ", storeTx.Hash())

	///
	/// call contract: retive
	///
	id, err := instance.Retrieve(callOpts(), "wang")
	if err != nil {
		log.Fatal(err)
		return
	}
	fmt.Println("retrieve returned id: ", id)
}

func txOpts(client *ethclient.Client, privateKey *ecdsa.PrivateKey, fromAddress common.Address) *bind.TransactOpts {
	nonce, err := client.PendingNonceAt(context.Background(), fromAddress)
	if err != nil {
		log.Fatal(err)
		return nil
	}

	gasPrice, err := client.SuggestGasPrice(context.Background())
	if err != nil {
		log.Fatal(err)
		return nil
	}

	chainId, err := client.ChainID(context.Background())
	if err != nil {
		log.Fatal(err)
		return nil
	}
	auth, err := bind.NewKeyedTransactorWithChainID(privateKey, chainId)
	if err != nil {
		log.Fatal(err)
		return nil
	}
	auth.Nonce = big.NewInt(int64(nonce))
	auth.Value = big.NewInt(0)     // in wei
	auth.GasLimit = uint64(300000) // in units
	auth.GasPrice = gasPrice
	return auth
}

func callOpts() *bind.CallOpts {
	return nil
}
