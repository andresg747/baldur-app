/*
  Warnings:

  - Added the required column `tokenSymbol` to the `Token` table without a default value. This is not possible if the table is not empty.
  - Made the column `tokenName` on table `Token` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `Token` ADD COLUMN `tokenSymbol` VARCHAR(191) NOT NULL,
    MODIFY `tokenName` VARCHAR(191) NOT NULL;
