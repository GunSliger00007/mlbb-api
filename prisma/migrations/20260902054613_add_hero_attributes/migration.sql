-- CreateTable
CREATE TABLE "hero_attributes" (
    "id" TEXT NOT NULL,
    "heroId" TEXT NOT NULL,
    "hp" DOUBLE PRECISION NOT NULL,
    "hpGrowth" DOUBLE PRECISION,
    "hpRegen" DOUBLE PRECISION,
    "mana" DOUBLE PRECISION,
    "manaGrowth" DOUBLE PRECISION,
    "manaRegen" DOUBLE PRECISION,
    "physicalAttack" DOUBLE PRECISION,
    "physicalAttackGrowth" DOUBLE PRECISION,
    "magicPower" DOUBLE PRECISION,
    "physicalDefense" DOUBLE PRECISION,
    "magicDefense" DOUBLE PRECISION,
    "attackSpeed" DOUBLE PRECISION,
    "attackSpeedGrowth" DOUBLE PRECISION,
    "movementSpeed" DOUBLE PRECISION,
    "attackRange" DOUBLE PRECISION,

    CONSTRAINT "hero_attributes_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "hero_attributes_heroId_key" ON "hero_attributes"("heroId");

-- AddForeignKey
ALTER TABLE "hero_attributes" ADD CONSTRAINT "hero_attributes_heroId_fkey" FOREIGN KEY ("heroId") REFERENCES "heroes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
