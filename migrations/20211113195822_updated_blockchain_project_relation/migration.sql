/*
  Warnings:

  - You are about to drop the column `projectId` on the `Blockchain` table. All the data in the column will be lost.
  - Added the required column `tokenId` to the `Blockchain` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Blockchain` DROP FOREIGN KEY `Blockchain_projectId_fkey`;

-- AlterTable
ALTER TABLE `Blockchain` DROP COLUMN `projectId`,
    ADD COLUMN `tokenId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Project` ADD COLUMN `bannerUrl` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `_BlockchainToProject` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_BlockchainToProject_AB_unique`(`A`, `B`),
    INDEX `_BlockchainToProject_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Blockchain` ADD CONSTRAINT `Blockchain_tokenId_fkey` FOREIGN KEY (`tokenId`) REFERENCES `Token`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_BlockchainToProject` ADD FOREIGN KEY (`A`) REFERENCES `Blockchain`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_BlockchainToProject` ADD FOREIGN KEY (`B`) REFERENCES `Project`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
