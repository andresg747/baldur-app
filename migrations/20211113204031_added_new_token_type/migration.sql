-- AlterTable
ALTER TABLE `Token` MODIFY `tokenType` ENUM('GOVERNANCE', 'UTILITY', 'MIXED', 'NATIVE') NOT NULL;
