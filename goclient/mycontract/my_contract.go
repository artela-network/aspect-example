// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package contract

import (
	"errors"
	"math/big"
	"strings"

	ethereum "github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/event"
)

// Reference imports to suppress errors if they are not otherwise used.
var (
	_ = errors.New
	_ = big.NewInt
	_ = strings.NewReader
	_ = ethereum.NotFound
	_ = bind.Bind
	_ = common.Big1
	_ = types.BloomLookup
	_ = event.NewSubscription
	_ = abi.ConvertType
)

// StoragePerson is an auto generated low-level Go binding around an user-defined struct.
type StoragePerson struct {
	Id      uint64
	Balance uint32
}

// StorageMetaData contains all meta data concerning the Storage contract.
var StorageMetaData = &bind.MetaData{
	ABI: "[{\"inputs\":[{\"internalType\":\"string\",\"name\":\"\",\"type\":\"string\"}],\"name\":\"accounts\",\"outputs\":[{\"internalType\":\"uint64\",\"name\":\"id\",\"type\":\"uint64\"},{\"internalType\":\"uint32\",\"name\":\"balance\",\"type\":\"uint32\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"}],\"name\":\"retrieve\",\"outputs\":[{\"internalType\":\"uint64\",\"name\":\"\",\"type\":\"uint64\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"string\",\"name\":\"name\",\"type\":\"string\"},{\"components\":[{\"internalType\":\"uint64\",\"name\":\"id\",\"type\":\"uint64\"},{\"internalType\":\"uint32\",\"name\":\"balance\",\"type\":\"uint32\"}],\"internalType\":\"structStorage.Person\",\"name\":\"person\",\"type\":\"tuple\"}],\"name\":\"store\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]",
	Sigs: map[string]string{
		"30390414": "accounts(string)",
		"64cc7327": "retrieve(string)",
		"003aef4a": "store(string,(uint64,uint32))",
	},
	Bin: "0x608060405234801561000f575f80fd5b506103d18061001d5f395ff3fe608060405234801561000f575f80fd5b506004361061003e575f3560e01c80623aef4a14610042578063303904141461005757806364cc7327146100c9575b5f80fd5b6100556100503660046101a0565b6100f5565b005b61009f61006536600461020e565b80516020818301810180515f8252928201919093012091525467ffffffffffffffff81169068010000000000000000900463ffffffff1682565b6040805167ffffffffffffffff909316835263ffffffff9091166020830152015b60405180910390f35b6100dc6100d73660046102b9565b610127565b60405167ffffffffffffffff90911681526020016100c0565b805f84846040516101079291906102f8565b9081526040519081900360200190206101208282610307565b5050505050565b5f8083836040516101399291906102f8565b9081526040519081900360200190205467ffffffffffffffff16905092915050565b5f8083601f84011261016b575f80fd5b50813567ffffffffffffffff811115610182575f80fd5b602083019150836020828501011115610199575f80fd5b9250929050565b5f805f83850360608112156101b3575f80fd5b843567ffffffffffffffff8111156101c9575f80fd5b6101d58782880161015b565b9095509350506040601f19820112156101ec575f80fd5b506020840190509250925092565b634e487b7160e01b5f52604160045260245ffd5b5f6020828403121561021e575f80fd5b813567ffffffffffffffff80821115610235575f80fd5b818401915084601f830112610248575f80fd5b81358181111561025a5761025a6101fa565b604051601f8201601f19908116603f01168101908382118183101715610282576102826101fa565b8160405282815287602084870101111561029a575f80fd5b826020860160208301375f928101602001929092525095945050505050565b5f80602083850312156102ca575f80fd5b823567ffffffffffffffff8111156102e0575f80fd5b6102ec8582860161015b565b90969095509350505050565b818382375f9101908152919050565b813567ffffffffffffffff811680821461031f575f80fd5b825467ffffffffffffffff198116821784559150602084013563ffffffff81168114610349575f80fd5b6bffffffffffffffffffffffff19929092161760409190911b6bffffffff0000000000000000161790555056fea2646970667358221220b5a421f3a8aa11f5b5f9535a30a21a47f23b2234b204b394e95fc092bce12fe664736f6c637827302e382e32302d646576656c6f702e323032332e362e352b636f6d6d69742e36303939626564610058",
}

// StorageABI is the input ABI used to generate the binding from.
// Deprecated: Use StorageMetaData.ABI instead.
var StorageABI = StorageMetaData.ABI

// Deprecated: Use StorageMetaData.Sigs instead.
// StorageFuncSigs maps the 4-byte function signature to its string representation.
var StorageFuncSigs = StorageMetaData.Sigs

// StorageBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use StorageMetaData.Bin instead.
var StorageBin = StorageMetaData.Bin

// DeployStorage deploys a new Ethereum contract, binding an instance of Storage to it.
func DeployStorage(auth *bind.TransactOpts, backend bind.ContractBackend) (common.Address, *types.Transaction, *Storage, error) {
	parsed, err := StorageMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(StorageBin), backend)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &Storage{StorageCaller: StorageCaller{contract: contract}, StorageTransactor: StorageTransactor{contract: contract}, StorageFilterer: StorageFilterer{contract: contract}}, nil
}

// Storage is an auto generated Go binding around an Ethereum contract.
type Storage struct {
	StorageCaller     // Read-only binding to the contract
	StorageTransactor // Write-only binding to the contract
	StorageFilterer   // Log filterer for contract events
}

// StorageCaller is an auto generated read-only Go binding around an Ethereum contract.
type StorageCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// StorageTransactor is an auto generated write-only Go binding around an Ethereum contract.
type StorageTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// StorageFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type StorageFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// StorageSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type StorageSession struct {
	Contract     *Storage          // Generic contract binding to set the session for
	CallOpts     bind.CallOpts     // Call options to use throughout this session
	TransactOpts bind.TransactOpts // Transaction auth options to use throughout this session
}

// StorageCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type StorageCallerSession struct {
	Contract *StorageCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts  // Call options to use throughout this session
}

// StorageTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type StorageTransactorSession struct {
	Contract     *StorageTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts  // Transaction auth options to use throughout this session
}

// StorageRaw is an auto generated low-level Go binding around an Ethereum contract.
type StorageRaw struct {
	Contract *Storage // Generic contract binding to access the raw methods on
}

// StorageCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type StorageCallerRaw struct {
	Contract *StorageCaller // Generic read-only contract binding to access the raw methods on
}

// StorageTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type StorageTransactorRaw struct {
	Contract *StorageTransactor // Generic write-only contract binding to access the raw methods on
}

// NewStorage creates a new instance of Storage, bound to a specific deployed contract.
func NewStorage(address common.Address, backend bind.ContractBackend) (*Storage, error) {
	contract, err := bindStorage(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &Storage{StorageCaller: StorageCaller{contract: contract}, StorageTransactor: StorageTransactor{contract: contract}, StorageFilterer: StorageFilterer{contract: contract}}, nil
}

// NewStorageCaller creates a new read-only instance of Storage, bound to a specific deployed contract.
func NewStorageCaller(address common.Address, caller bind.ContractCaller) (*StorageCaller, error) {
	contract, err := bindStorage(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &StorageCaller{contract: contract}, nil
}

// NewStorageTransactor creates a new write-only instance of Storage, bound to a specific deployed contract.
func NewStorageTransactor(address common.Address, transactor bind.ContractTransactor) (*StorageTransactor, error) {
	contract, err := bindStorage(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &StorageTransactor{contract: contract}, nil
}

// NewStorageFilterer creates a new log filterer instance of Storage, bound to a specific deployed contract.
func NewStorageFilterer(address common.Address, filterer bind.ContractFilterer) (*StorageFilterer, error) {
	contract, err := bindStorage(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &StorageFilterer{contract: contract}, nil
}

// bindStorage binds a generic wrapper to an already deployed contract.
func bindStorage(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := StorageMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_Storage *StorageRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _Storage.Contract.StorageCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_Storage *StorageRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _Storage.Contract.StorageTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_Storage *StorageRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _Storage.Contract.StorageTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_Storage *StorageCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _Storage.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_Storage *StorageTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _Storage.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_Storage *StorageTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _Storage.Contract.contract.Transact(opts, method, params...)
}

// Accounts is a free data retrieval call binding the contract method 0x30390414.
//
// Solidity: function accounts(string ) view returns(uint64 id, uint32 balance)
func (_Storage *StorageCaller) Accounts(opts *bind.CallOpts, arg0 string) (struct {
	Id      uint64
	Balance uint32
}, error) {
	var out []interface{}
	err := _Storage.contract.Call(opts, &out, "accounts", arg0)

	outstruct := new(struct {
		Id      uint64
		Balance uint32
	})
	if err != nil {
		return *outstruct, err
	}

	outstruct.Id = *abi.ConvertType(out[0], new(uint64)).(*uint64)
	outstruct.Balance = *abi.ConvertType(out[1], new(uint32)).(*uint32)

	return *outstruct, err

}

// Accounts is a free data retrieval call binding the contract method 0x30390414.
//
// Solidity: function accounts(string ) view returns(uint64 id, uint32 balance)
func (_Storage *StorageSession) Accounts(arg0 string) (struct {
	Id      uint64
	Balance uint32
}, error) {
	return _Storage.Contract.Accounts(&_Storage.CallOpts, arg0)
}

// Accounts is a free data retrieval call binding the contract method 0x30390414.
//
// Solidity: function accounts(string ) view returns(uint64 id, uint32 balance)
func (_Storage *StorageCallerSession) Accounts(arg0 string) (struct {
	Id      uint64
	Balance uint32
}, error) {
	return _Storage.Contract.Accounts(&_Storage.CallOpts, arg0)
}

// Retrieve is a free data retrieval call binding the contract method 0x64cc7327.
//
// Solidity: function retrieve(string name) view returns(uint64)
func (_Storage *StorageCaller) Retrieve(opts *bind.CallOpts, name string) (uint64, error) {
	var out []interface{}
	err := _Storage.contract.Call(opts, &out, "retrieve", name)

	if err != nil {
		return *new(uint64), err
	}

	out0 := *abi.ConvertType(out[0], new(uint64)).(*uint64)

	return out0, err

}

// Retrieve is a free data retrieval call binding the contract method 0x64cc7327.
//
// Solidity: function retrieve(string name) view returns(uint64)
func (_Storage *StorageSession) Retrieve(name string) (uint64, error) {
	return _Storage.Contract.Retrieve(&_Storage.CallOpts, name)
}

// Retrieve is a free data retrieval call binding the contract method 0x64cc7327.
//
// Solidity: function retrieve(string name) view returns(uint64)
func (_Storage *StorageCallerSession) Retrieve(name string) (uint64, error) {
	return _Storage.Contract.Retrieve(&_Storage.CallOpts, name)
}

// Store is a paid mutator transaction binding the contract method 0x003aef4a.
//
// Solidity: function store(string name, (uint64,uint32) person) returns()
func (_Storage *StorageTransactor) Store(opts *bind.TransactOpts, name string, person StoragePerson) (*types.Transaction, error) {
	return _Storage.contract.Transact(opts, "store", name, person)
}

// Store is a paid mutator transaction binding the contract method 0x003aef4a.
//
// Solidity: function store(string name, (uint64,uint32) person) returns()
func (_Storage *StorageSession) Store(name string, person StoragePerson) (*types.Transaction, error) {
	return _Storage.Contract.Store(&_Storage.TransactOpts, name, person)
}

// Store is a paid mutator transaction binding the contract method 0x003aef4a.
//
// Solidity: function store(string name, (uint64,uint32) person) returns()
func (_Storage *StorageTransactorSession) Store(name string, person StoragePerson) (*types.Transaction, error) {
	return _Storage.Contract.Store(&_Storage.TransactOpts, name, person)
}
