/*
  Warnings:

  - The `role` column on the `heroes` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ASSASSIN', 'FIGHTER', 'MAGE', 'MARKSMAN', 'SUPPORT', 'TANK', 'UNDEFINED');

-- AlterTable
ALTER TABLE "heroes" DROP COLUMN "role",
ADD COLUMN     "role" "Role"[] DEFAULT ARRAY['UNDEFINED']::"Role"[];
