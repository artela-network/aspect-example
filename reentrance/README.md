
# Sample Aspect

## Instruction

This is a sample project of Artela Aspect. 

## Files

```bash
.
├── README.md
├── asconfig.json
├── aspect                 <-- Your aspect code resides here
│   └── index.ts
├── contracts                  <-- Place your smart contracts here
├── scripts                    <-- Utility scripts, including deploying, binding and etc.
│   ├── aspect-deploy.cjs
│   ├── bind.cjs
│   ├── contract-call.cjs
│   └── contract-deploy.cjs
...
```

## Useful links

* [@artela/aspect-tools](https://docs.artela.network/develop/reference/aspect-tool/overview)

## How to work

### create account for test
```shell
 npm run account:create
 npm run account:create -- --skfile ./aspect_accounts.txt
 npm run account:create -- --skfile ./attack_accounts.txt
```
there will be three private Key when completed

1. ./privateKey.txt
2. ./aspect_accounts.txt
3. ./attack_accounts.txt

To acquire Test Tokens for your testing needs : https://docs.artela.network/develop/resources/faucet

### execute test case

```shell
cd test
node *.test.js
```