// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ProductStore {
    struct Product {
        string name;
        string description;
        uint price;
        address creator;
        uint createdAt;
        string imageUrl;
    }

    Product[] public products;

    function createProduct(
        string memory name,
        string memory description,
        uint price,
        string memory imageUrl
    ) public {
        products.push(
            Product(name, description, price, msg.sender, block.timestamp, imageUrl)
        );
    }

    function getProducts() public view returns (Product[] memory) {
        return products;
    }
}
