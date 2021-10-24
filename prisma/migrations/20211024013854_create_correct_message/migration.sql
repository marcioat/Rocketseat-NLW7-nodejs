/*
  Warnings:

  - You are about to drop the `nlw_messagex` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "nlw_messagex";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "nlw_message" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "text" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" TEXT NOT NULL,
    CONSTRAINT "nlw_message_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "nlw_user" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
