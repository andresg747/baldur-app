/*
  Warnings:

  - You are about to drop the column `logoUrl` on the `Blockchain` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Blockchain` DROP COLUMN `logoUrl`;

-- AlterTable
ALTER TABLE `Token` ADD COLUMN `tokenImageURL` VARCHAR(191) NULL;
