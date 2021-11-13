-- DropForeignKey
ALTER TABLE `Blockchain` DROP FOREIGN KEY `Blockchain_tokenId_fkey`;

-- CreateTable
CREATE TABLE `_BlockchainToToken` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_BlockchainToToken_AB_unique`(`A`, `B`),
    INDEX `_BlockchainToToken_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_BlockchainToToken` ADD FOREIGN KEY (`A`) REFERENCES `Blockchain`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_BlockchainToToken` ADD FOREIGN KEY (`B`) REFERENCES `Token`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
