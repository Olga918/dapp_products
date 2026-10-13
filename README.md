# Products DApp

Смарт-контракт обліку продуктів + фронтенд (ethers.js, MetaMask, Hardhat).

## Контракт `ProductStore`

Поля продукту: назва, опис, ціна, адреса того хто створив, час створення, URL картинки.

- `createProduct(...)` — створити продукт
- `getProducts()` — список усіх продуктів

## Запуск

```text
npm install
npx hardhat compile
npx hardhat node
```

У другому терміналі:

```text
npx hardhat run ./scripts/deploy.js --network localhost
```

Адресу з `Contract address:` встав у `index.html` (`const contract_address`).

MetaMask: мережа Hardhat, RPC `http://127.0.0.1:8545`, Chain ID `31337`.

Сторінка:

```text
npx --yes serve .
```

Відкрий `http://localhost:3000`.
