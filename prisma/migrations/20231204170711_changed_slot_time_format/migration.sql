/*
  Warnings:

  - You are about to drop the column `end_time` on the `times` table. All the data in the column will be lost.
  - You are about to drop the column `start_time` on the `times` table. All the data in the column will be lost.
  - Added the required column `time` to the `times` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "slots_time_id_key";

-- AlterTable
ALTER TABLE "times" DROP COLUMN "end_time",
DROP COLUMN "start_time",
ADD COLUMN     "time" TIMESTAMP(3) NOT NULL;
