/*
  Warnings:

  - You are about to drop the `SocialNetwork` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `SocialNetwork` DROP FOREIGN KEY `SocialNetwork_projectId_fkey`;

-- AlterTable
ALTER TABLE `Project` ADD COLUMN `blogUrl` VARCHAR(191) NULL,
    ADD COLUMN `discordUrl` VARCHAR(191) NULL,
    ADD COLUMN `facebookUrl` VARCHAR(191) NULL,
    ADD COLUMN `instagramUrl` VARCHAR(191) NULL,
    ADD COLUMN `telegramUrl` VARCHAR(191) NULL,
    ADD COLUMN `twitterUrl` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `SocialNetwork`;
