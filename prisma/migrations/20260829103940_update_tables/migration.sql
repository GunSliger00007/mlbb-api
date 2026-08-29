/*
  Warnings:

  - You are about to drop the `Emblem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `EmblemTalent` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GameMode` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Hero` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Item` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Rank` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Skin` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Spell` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "EmblemTalent" DROP CONSTRAINT "EmblemTalent_emblemId_fkey";

-- DropForeignKey
ALTER TABLE "Skin" DROP CONSTRAINT "Skin_heroId_fkey";

-- DropTable
DROP TABLE "Emblem";

-- DropTable
DROP TABLE "EmblemTalent";

-- DropTable
DROP TABLE "GameMode";

-- DropTable
DROP TABLE "Hero";

-- DropTable
DROP TABLE "Item";

-- DropTable
DROP TABLE "Rank";

-- DropTable
DROP TABLE "Skin";

-- DropTable
DROP TABLE "Spell";

-- CreateTable
CREATE TABLE "heroes" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "releaseDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "heroes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skins" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "releaseDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "image" TEXT NOT NULL,
    "heroId" TEXT NOT NULL,

    CONSTRAINT "skins_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "items" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "cost" INTEGER NOT NULL,
    "cooldown" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "emblems" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "emblems_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "emblem_talents" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "emblemId" TEXT NOT NULL,

    CONSTRAINT "emblem_talents_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "spells" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "cooldown" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "spells_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "game_modes" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "game_modes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ranks" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "ranks_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "skins" ADD CONSTRAINT "skins_heroId_fkey" FOREIGN KEY ("heroId") REFERENCES "heroes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "emblem_talents" ADD CONSTRAINT "emblem_talents_emblemId_fkey" FOREIGN KEY ("emblemId") REFERENCES "emblems"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
