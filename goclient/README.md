# To deploy and invoke a contract on Artelamint
1. copy xxx.sol to a new subfolder like mycontract of go cline.
2. In the new folder, run the commands:
    ```
    solc mycontract.sol --combined-json bin,bin-runtime,srcmap,srcmap-runtime,abi,userdoc,devdoc,metadata,hashes --optimize -o ./ --overwrite
    ```
    ```
    abigen --pkg contract --out my_contract.go --combined-json ./combined.json
    ```
3. modify code in main():main.go
    ```
	/// deploy contract
    ```
    ```
    /// call contract: store
    ```
4. start node and run go client in project root:
    ```
    go run main.go
    ```